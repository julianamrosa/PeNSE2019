## TABELA 1.2.1 ##

#vetores necessarios
racas <- c("Branca", "Preta", "Amarela", "Parda", "Indígena")

#olhando as categorias das variaveis de interesse
table(pense$B01002) #raca/cor

## DEFININDO FUNCOES
arruma_tab3 <- function(tabela, indicador, nome_var1, nome_var2){
  tabela$Indicador <- indicador
  tabela$Variavel1 <- nome_var1
  tabela$Variavel2 <- nome_var2
  row.names(tabela) <- NULL
  tabela <- tabela%>%
    mutate(Percentual=mean*100, Erro_Padrao=SE*100, LI=`2.5 %`*100, LS=`97.5 %`*100)%>%
    return(tabela)
}

tab_131 <- function(tt, var1, valor1, local){
  #Filtrando: racas
  tt <- tt[2:6, ]
  
  #criando demais colunas
  tt$Valor_Var1 <- rep(valor1, 5)
  tt$Localizacao <- rep(local, 5)
  tt$Valor_Var2 <- racas
  
  #arrumando a tabela
  tt <- arruma_tab3(tt, "Percentual de escolares", var1,
                    "Raça/ Cor")
  tt <- tt%>%
    select(Indicador, Variavel1, Valor_Var1, Localizacao, Variavel2, Valor_Var2, Percentual,
           Erro_Padrao, LI, LS)
  return(tt)
}

## RACA/COR - por sexo e regiao

#Brasil, Homem
tt1 <- estima_pct(pense, subset(desenho_validos,
                                (B01001A==1)),
                  "B01002")
tt1 <- tab_131(tt1, "Sexo", "Masculino", "Brasil")
tabela_131 <- tt1
#5 linhas

#Regioes, Homem
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  (B01001A==1 & REGIAO==i)),
                                  "B01002")
  tt1 <- tab_131(tt1, "Sexo", "Masculino", regiao[i])
  tabela_131 <- rbind(tabela_131, tt1)
}
#30 linhas

#Brasil, Mulher
tt1 <- estima_pct(pense, subset(desenho_validos,
                                (B01001A==2)),
                  "B01002")
tt1 <- tab_131(tt1, "Sexo", "Feminino", "Brasil")
tabela_131 <- rbind(tabela_131, tt1)
#35 linhas

#Regioes, Mulher
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  (B01001A==2 & REGIAO==i)),
                    "B01002")
  tt1 <- tab_131(tt1, "Sexo", "Feminino", regiao[i])
  tabela_131 <- rbind(tabela_131, tt1)
}
#60 linhas

## RACA/COR - por dep adm e regiao

#Brasil, Pública
tt1 <- estima_pct(pense, subset(desenho_validos,
                                (DEP_ADMIN==1)),
                  "B01002")
tt1 <- tab_131(tt1, "Dep Adm", "Pública", "Brasil")
tabela_131 <- rbind(tabela_131, tt1)
#65 linhas

#Regioes, Homem
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  (DEP_ADMIN==1 & REGIAO==i)),
                    "B01002")
  tt1 <- tab_131(tt1, "Dep Adm", "Pública", regiao[i])
  tabela_131 <- rbind(tabela_131, tt1)
}
#90 linhas

#Brasil, Mulher
tt1 <- estima_pct(pense, subset(desenho_validos,
                                (DEP_ADMIN==2)),
                  "B01002")
tt1 <- tab_131(tt1, "Dep Adm", "Privada", "Brasil")
tabela_131 <- rbind(tabela_131, tt1)
#95 linhas

#Regioes, Mulher
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  (DEP_ADMIN==2 & REGIAO==i)),
                    "B01002")
  tt1 <- tab_131(tt1, "Dep Adm", "Privada", regiao[i])
  tabela_131 <- rbind(tabela_131, tt1)
}
#120 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.1")
writeData(wb,"1.3.1",tabela_131)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)
