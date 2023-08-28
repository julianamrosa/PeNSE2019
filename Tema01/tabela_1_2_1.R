## TABELA 1.2.1 ##

#vetores necessarios
faixa_etaria <- c("13 a 15 anos", "16 e 17 anos")

#olhando as categorias das variaveis de interesse
table(pense$B01021A) #ano escolar

## DEFININDO FUNCOES
estima_pct <- function(dados, desenhos, nomes_vars){
  variaveis <- list()
  for (i in 1:length(nomes_vars)){
    variaveis[[i]] <- as.factor(unlist(dados[nomes_vars[i]]))
  }
  tabela <- svymean(~do.call(interaction, variaveis), desenhos,
                    na.rm=T)
  ic <- confint(tabela) #intervalos de confianca
  tabela <- as.data.frame(tabela)
  tabela <- cbind(tabela, ic) #juntando
  return(tabela)
}

arruma_tab2 <- function(tabela, indicador, nome_var){
  tabela$Indicador <- indicador
  tabela$Variavel <- nome_var
  row.names(tabela) <- NULL
  tabela <- tabela%>%
    mutate(Percentual=mean*100, Erro_Padrao=SE*100, LI=`2.5 %`*100, LS=`97.5 %`*100)%>%
  return(tabela)
}


tab_121 <- function(tt, idade, local){
  #Filtrando: 7o a 1o ano
  tt <- tt[3:8, ]
  
  #criando demais colunas
  tt$Idade <- rep(idade, 6)
  tt$Localizacao <- rep(local, 6)
  tt$Valor_Var <- c("7° Ano EF", "8° Ano EF", "9° Ano EF",
                     "1° Ano EM", "2° Ano EM", "3° Ano EM")
  
  #arrumando a tabela
  tt <- arruma_tab2(tt, "Percentual de escolares", "Ano Escolar")
  tt <- tt%>%
    select(Indicador, Idade, Localizacao, Variavel, Valor_Var, Percentual,
           Erro_Padrao, LI, LS)
  return(tt)
}

## ANO ESCOLAR - por idade e região

# 13 a 17 anos #

#Brasil
tt1 <- estima_pct(pense, desenho_validos, "B01021A")
tt1 <- tab_121(tt1, "13 a 17 anos", "Brasil")
tabela_121 <- tt1
#6 linhas

for (i in 2:3){ #para idades
  tt1 <- estima_pct(pense, subset(desenho_validos, B01003==i),
                    "B01021A")
  tt1 <- tab_121(tt1, faixa_etaria[(i-1)], "Brasil")
  tabela_121 <- rbind(tabela_121, tt1)
}
#18 linhas

#Regioes
regiao <- c("Norte", "Nordeste", "Sudeste", "Sul",
            "Centro-Oeste")

for (i in 1:5){ #para regioes
  tt1 <- estima_pct(pense, subset(desenho_validos, REGIAO==i),
                    "B01021A")
  tt1 <- tab_121(tt1, "13 a 17 anos", regiao[i])
  tabela_121 <- rbind(tabela_121, tt1)
}
#48 linhas

# Demais faixas de idade #

for (i in 2:3){ #para idades
  for (j in 1:length(regiao)){ #para regioes
    tt1 <- estima_pct(pense, subset(desenho_validos, (B01003==i &
                                    REGIAO==j)), "B01021A")
    tt1 <- tab_121(tt1, faixa_etaria[(i-1)], regiao[j])
    tabela_121 <- rbind(tabela_121, tt1)
  }
}

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.1")
writeData(wb,"1.2.1",tabela_121)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)