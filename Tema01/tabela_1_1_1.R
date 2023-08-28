## CARREGANDO PACOTES ##
library(vroom)
library(survey)
library(dplyr)
library(writexl)
library(openxlsx)

## CARREGANDO DADOS ##

pense <- vroom("PENSE2019_MICRODADOS.csv")

## CALCULO USANDO PACOTE ##

# Ajuste necessario para calculo correto dos erros
options(survey.lonely.psu = "adjust")

# Populacao de interesse
pense$Alvo <- ifelse(((pense$B01003!=1 & pense$B01003!=4)
                      | is.na(pense$B01003)),
                     1, 0) #13 a 17 anos

# Objeto inicial
desenho_pre <- svydesign(
  ids = ~ESCOLA,
  strata = ~ESTRATO,
  weights = ~PESO_INICIAL,
  nest = TRUE,
  data = pense)

# Aplica a pos-estratificacao -- este é o objeto final
desenho_pense <- postStratify(desenho_pre,
                              strata = ~POSEST,
                              population = pense[,
                                                 c("POSEST",
                                                   "TOTAIS_POSEST")])

# O dominio de estimacao é IND_EXPANSAO = 1, entao ja pode deixar criado o objeto
desenho_validos <- subset(desenho_pense, IND_EXPANSAO == 1)
desenho_validos <- subset(desenho_validos, Alvo==1) #tira <13 e >=18 anos

# Exemplo de calculo dos totais por UF
totais_UF <- svytotal(~as.factor(UF), desenho_validos)

## TABELA 1.1.1 ##

#vetores necessarios
faixa_etaria <- c("13 a 15 anos", "16 e 17 anos")
regiao <- c("Norte", "Nordeste", "Sudeste", "Sul",
            "Centro-Oeste")

#olhando as categorias das variaveis de interesse
table(pense$B01003) #idade
table(pense$REGIAO) #regiao
table(pense$B01001A) #sexo
table(pense$DEP_ADMIN) #dep adm

## DEFININDO FUNCOES

estima_total <- function(dados, desenhos, nomes_vars){
  variaveis <- list()
  for (i in 1:length(nomes_vars)){
    variaveis[[i]] <- as.factor(unlist(dados[nomes_vars[i]]))
  }
  tabela <- svytotal(~do.call(interaction, variaveis), desenhos,
                     na.rm=T)
  ic <- confint(tabela) #intervalos de confianca
  tabela <- as.data.frame(tabela)
  tabela <- cbind(tabela, ic) #juntando
  return(tabela)
}

arruma_tab <- function(tabela, indicador, nome_var){
  tabela$Indicador <- indicador
  tabela$Variavel <- nome_var
  row.names(tabela) <- NULL
  tabela <- tabela%>%
    rename(Total=total, Erro_Padrao=SE, LI=`2.5 %`, LS=`97.5 %`)
  return(tabela)
}

tab_111 <- function(tt, idade, local, nome_var){
  #Filtrando: sexo
  tt <- tt[1:2, ]
  
  #criando demais colunas
  tt$Idade <- rep(idade, 2)
  tt$Localizacao <- rep(local, 2)
  if (nome_var=="Sexo"){
    tt$Valor_Var <- c("Masculino", "Feminino")
  }
  else if (nome_var=="Dep Adm"){
    tt$Valor_Var <- c("Pública", "Privada")
  }
  
  #arrumando a tabela
  tt <- arruma_tab(tt, "Total de escolares", nome_var)
  tt <- tt%>%
    select(Indicador, Idade, Localizacao, Variavel, Valor_Var, Total,
           Erro_Padrao, LI, LS)
  return(tt)
}

## SEXO - por idade e região

#Brasil
tt1 <- estima_total(pense, desenho_validos, "B01001A")
tt1 <- tab_111(tt1, "13 a 17 anos", "Brasil", "Sexo")
tabela_111 <- tt1
#2 linhas

for (i in 2:3){ #para idades
  tt1 <- estima_total(pense, subset(desenho_validos, B01003==i),
                    "B01001A")
  tt1 <- tab_111(tt1, faixa_etaria[(i-1)], "Brasil", "Sexo")
  tabela_111 <- rbind(tabela_111, tt1)
}
#6 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_total(pense, subset(desenho_validos, REGIAO==i),
                    "B01001A")
  tt1 <- tab_111(tt1, "13 a 17 anos", regiao[i], "Sexo")
  tabela_111 <- rbind(tabela_111, tt1)
}
#16 linhas

for (i in 2:3){ #para idades
  for (j in 1:length(regiao)){ #para regioes
    tt1 <- estima_total(pense, subset(desenho_validos,
                                      (B01003==i & REGIAO==j)),
                        "B01001A")
    tt1 <- tab_111(tt1, faixa_etaria[(i-1)], regiao[j], "Sexo")
    tabela_111 <- rbind(tabela_111, tt1)
  }
}
#36 linhas

## DEP ADM - por idade e região

#Brasil
tt1 <- estima_total(pense, desenho_validos, "B01001A")
tt1 <- tab_111(tt1, "13 a 17 anos", "Brasil", "Dep Adm")
tabela_111 <- rbind(tabela_111, tt1)
#38 linhas

for (i in 2:3){ #para idades
  tt1 <- estima_total(pense, subset(desenho_validos, B01003==i),
                      "DEP_ADMIN")
  tt1 <- tab_111(tt1, faixa_etaria[(i-1)], "Brasil", "Dep Adm")
  tabela_111 <- rbind(tabela_111, tt1)
}
#42 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_total(pense, subset(desenho_validos, REGIAO==i),
                      "DEP_ADMIN")
  tt1 <- tab_111(tt1, "13 a 17 anos", regiao[i], "Dep Adm")
  tabela_111 <- rbind(tabela_111, tt1)
}
#52 linhas

for (i in 2:3){ #para idades
  for (j in 1:length(regiao)){ #para regioes
    tt1 <- estima_total(pense, subset(desenho_validos,
                                      (B01003==i & REGIAO==j)),
                        "DEP_ADMIN")
    tt1 <- tab_111(tt1, faixa_etaria[(i-1)], regiao[j], "Dep Adm")
    tabela_111 <- rbind(tabela_111, tt1)
  }
}
#72 linhas

## Salvando planilha

write_xlsx(list("1.1.1"=tabela_111), "Tema01/Tema01.xlsx")