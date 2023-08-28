## TABELA 1.3.1 ##

#vetores necessarios
pretensao <- c("Somente continuar estudando", "Somente trabalhar", "Continuar estudando e trabalhar", "Seguir outro plano", "Não sei")

#olhando as categorias das variaveis de interesse
table(pense$B01026A1) #pretencao apos o fundamental
table(pense$B01026A2) #pretencao apos o medio

## DEFININDO FUNCOES

tab_141 <- function(tt, var1, valor1, local, var2, valor2){
  #Filtrando: pretensoes
  tt <- tt[3:7, ]
  
  #criando demais colunas
  tt$Valor_Var1 <- rep(valor1, 5)
  tt$Localizacao <- rep(local, 5)
  tt$Valor_Var2 <- valor2
  
  #arrumando a tabela
  tt <- arruma_tab3(tt, "Percentual de escolares", var1,
                    var2)
  tt <- tt%>%
    select(Indicador, Variavel1, Valor_Var1, Localizacao, Variavel2, Valor_Var2, Percentual,
           Erro_Padrao, LI, LS)
  return(tt)
}

## PRETENSAO APOS EF, por idade, regiao e dep adm

#Brasil, 13 a 17 anos
tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7)), "B01026A1")
tt1 <- tab_141(tt1, "Idade", "13 a 17 anos", "Brasil", "Pretensão após a conclusão do EF", pretensao)
tabela_141 <- tt1
#5 linhas

#Regioes, 13 a 17 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & REGIAO==i)),
                    "B01026A1")
  tt1 <- tab_141(tt1, "Idade", "13 a 17 anos", regiao[i], "Pretensão após a conclusão do EF", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#30 linhas

#Brasil, 13 a 15 anos
tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & B01003==2)),
                  "B01026A1")
tt1 <- tab_141(tt1, "Idade", "13 a 15 anos", "Brasil", "Pretensão após a conclusão do EF", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#35 linhas

#Regioes, 13 a 15 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & REGIAO==i
                                                    & B01003==2)), "B01026A1")
  tt1 <- tab_141(tt1, "Idade", "13 a 15 anos", regiao[i], "Pretensão após a conclusão do EF", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#60 linhas

#Brasil, 16 e 17 anos
tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & B01003==3)),
                  "B01026A1")
tt1 <- tab_141(tt1, "Idade", "16 e 17 anos", "Brasil", "Pretensão após a conclusão do EF", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#65 linhas

#Regioes, 16 e 17 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & REGIAO==i
                                                    & B01003==3)), "B01026A1")
  tt1 <- tab_141(tt1, "Idade", "16 e 17 anos", regiao[i], "Pretensão após a conclusão do EF", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#90 linhas

#Brasil, pública
tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & DEP_ADMIN==1)),
                  "B01026A1")
tt1 <- tab_141(tt1, "Dep_Adm", "Pública", "Brasil", "Pretensão após a conclusão do EF", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#95 linhas

#Regioes, pública
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & REGIAO==i
                                                    & DEP_ADMIN==1)), "B01026A1")
  tt1 <- tab_141(tt1, "Dep_Adm", "Pública", regiao[i], "Pretensão após a conclusão do EF", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#120 linhas

#Brasil, privada
tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & DEP_ADMIN==2)),
                  "B01026A1")
tt1 <- tab_141(tt1, "Dep_Adm", "Privada", "Brasil", "Pretensão após a conclusão do EF", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#125 linhas

#Regioes, privada
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (B01021A!=5 & B01021A!=6 & B01021A!=7 & REGIAO==i
                                                    & DEP_ADMIN==2)), "B01026A1")
  tt1 <- tab_141(tt1, "Dep_Adm", "Privada", regiao[i], "Pretensão após a conclusão do EF", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#150 linhas

## PRETENSAO APOS EM, por idade, regiao e dep adm

#Brasil, 13 a 17 anos
tt1 <- estima_pct(pense, desenho_validos, "B01026A2")
tt1 <- tab_141(tt1, "Idade", "13 a 17 anos", "Brasil", "Pretensão após a conclusão do EM", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#155 linhas

#Regioes, 13 a 17 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (REGIAO==i)),
                    "B01026A2")
  tt1 <- tab_141(tt1, "Idade", "13 a 17 anos", regiao[i], "Pretensão após a conclusão do EM", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#180 linhas

#Brasil, 13 a 15 anos
tt1 <- estima_pct(pense, subset(desenho_validos, (B01003==2)),
                  "B01026A2")
tt1 <- tab_141(tt1, "Idade", "13 a 15 anos", "Brasil", "Pretensão após a conclusão do EM", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#185 linhas

#Regioes, 13 a 15 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (REGIAO==i
                                                    & B01003==2)), "B01026A2")
  tt1 <- tab_141(tt1, "Idade", "13 a 15 anos", regiao[i], "Pretensão após a conclusão do EM", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#210 linhas

#Brasil, 16 e 17 anos
tt1 <- estima_pct(pense, subset(desenho_validos, (B01003==3)),
                  "B01026A2")
tt1 <- tab_141(tt1, "Idade", "16 e 17 anos", "Brasil", "Pretensão após a conclusão do EM", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#215 linhas

#Regioes, 16 e 17 anos
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (REGIAO==i
                                                    & B01003==3)), "B01026A2")
  tt1 <- tab_141(tt1, "Idade", "16 e 17 anos", regiao[i], "Pretensão após a conclusão do EM", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#240 linhas

#Brasil, pública
tt1 <- estima_pct(pense, subset(desenho_validos, (DEP_ADMIN==1)),
                  "B01026A2")
tt1 <- tab_141(tt1, "Dep_Adm", "Pública", "Brasil", "Pretensão após a conclusão do EM", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#245 linhas

#Regioes, pública
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (REGIAO==i
                                                    & DEP_ADMIN==1)), "B01026A2")
  tt1 <- tab_141(tt1, "Dep_Adm", "Pública", regiao[i], "Pretensão após a conclusão do EM", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#270 linhas

#Brasil, privada
tt1 <- estima_pct(pense, subset(desenho_validos, (DEP_ADMIN==2)),
                  "B01026A2")
tt1 <- tab_141(tt1, "Dep_Adm", "Privada", "Brasil", "Pretensão após a conclusão do EM", pretensao)
tabela_141 <- rbind(tabela_141, tt1)
#275 linhas

#Regioes, privada
for (i in 1:5){ #para regiao
  tt1 <- estima_pct(pense, subset(desenho_validos, (REGIAO==i
                                                    & DEP_ADMIN==2)), "B01026A2")
  tt1 <- tab_141(tt1, "Dep_Adm", "Privada", regiao[i], "Pretensão após a conclusão do EM", pretensao)
  tabela_141 <- rbind(tabela_141, tt1)
}
#300 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.4.1")
writeData(wb,"1.4.1",tabela_141)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)