## TABELA 1.1.1 ##

#olhando as categorias das variaveis de interesse
table(pense$B01001A) #sexo
table(pense$DEP_ADMIN) #dep adm

#montando a tabela
tabela_111 <- modelo1(DESENHO=desenho_validos,
                                   VAR_COL="B01001A",
                                   NOME_VAR_COL="Sexo",
                                   VETOR_COL=c("Masculino", "Feminino"),
                                   FILTRO=1:2,
                                   fun_estima="estima_total",
                                   fun_arruma="tab_3vars")

tabela_111 <- modelo1(DESENHO=desenho_validos,
                                   VAR_COL="DEP_ADMIN",
                                   NOME_VAR_COL="Dependência Administrativa",
                                   VETOR_COL=c("Pública", "Privada"),
                                   FILTRO=1:2,
                                   fun_estima="estima_total",
                                   fun_arruma="tab_3vars")
tabela_111 <- rbind(tabela_111, tabela_111)

#Salvando a planilha
wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.1.1")
writeData(wb,"1.1.1",tabela_111)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.1.2 ##

table(pense$B01001A) #sexo
table(pense$DEP_ADMIN) #dep adm

tabela_112_pt1 <- modelo2(DESENHO=desenho_validos,
                                VAR_COL="B01001A",
                                NOME_VAR_COL="Sexo",
                                VETOR_COL=c("Masculino", "Feminino"),
                                FILTRO=1:2,
                                fun_estima="estima_total",
                                fun_arruma="tab_2vars")

tabela_112_pt2 <- modelo2(DESENHO=desenho_validos,
                                VAR_COL="DEP_ADMIN",
                                NOME_VAR_COL="Dependência Administrativa",
                                VETOR_COL=c("Pública", "Privada"),
                                FILTRO=1:2,
                                fun_estima="estima_total",
                                fun_arruma="tab_2vars")

tabela_112 <- rbind(tabela_112_pt1, tabela_112_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.1.2")
writeData(wb,"1.1.2",tabela_112)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.1.3 ##
tabela_113_pt1 <- modelo3_teste(DESENHO=desenho_validos,
                                VAR_COL="B01001A",
                                NOME_VAR_COL="Sexo",
                                VETOR_COL=c("Masculino", "Feminino"),
                                FILTRO=1:2,
                                fun_estima="estima_total",
                                fun_arruma="tab_2vars")
tabela_113_pt2 <- modelo3_teste(DESENHO=desenho_validos,
                                VAR_COL="DEP_ADMIN",
                                NOME_VAR_COL="Dependência Administrativa",
                                VETOR_COL=c("Pública", "Privada"),
                                FILTRO=1:2,
                                fun_estima="estima_total",
                                fun_arruma="tab_2vars")

tabela_113_teste <- rbind(tabela_113_pt1, tabela_113_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.1.3")
writeData(wb,"1.1.3",tabela_113)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.2.1 ##

table(pense$B01021A) #ano escolar

tabela_121 <- modelo1(DESENHO=subset(desenho_validos, B01021A!=-2),
                                  VAR_COL="B01021A",
                                  NOME_VAR_COL="Ano Escolar",
                                  VETOR_COL=ano_escolar,
                                  FILTRO=3:8,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.1")
writeData(wb,"1.2.1",tabela_121)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.2.2 ##

table(pense$B01021A) #ano escolar

tabela_122 <- modelo2(DESENHO=subset(desenho_validos, B01021A!=-2),
                                  VAR_COL="B01021A",
                                  NOME_VAR_COL="Ano Escolar",
                                  VETOR_COL=ano_escolar,
                                  FILTRO=3:8,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.2")
writeData(wb,"1.2.2",tabela_122)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.2.3 ##

table(pense$B01021A) #ano escolar

tabela_123 <- modelo3(DESENHO=subset(desenho_validos, B01021A!=-2),
                                  VAR_COL="B01021A",
                                  NOME_VAR_COL="Ano Escolar",
                                  VETOR_COL=ano_escolar,
                                  FILTRO=3:8,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.3")
writeData(wb,"1.2.3",tabela_123)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.3.1 ##

table(pense$B01002) #raça

tabela_131_pt1 <- modelo1_2(DESENHO=subset(desenho_validos, B01002!=-2),
                                  VAR_COL="B01002",
                                  NOME_VAR_COL="Raça/Cor",
                                  VETOR_COL=racas,
                                  FILTRO=2:6,
                                  VAR_LIN=pense$B01001A,
                                  NOM_VAR_LIN="Sexo",
                                  VETOR_LIN=c("Masculino", "Feminino"),
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

tabela_131_pt2 <- modelo1_2(DESENHO=subset(desenho_validos, B01002!=-2),
                                  VAR_COL="B01002",
                                  NOME_VAR_COL="Raça/Cor",
                                  VETOR_COL=racas,
                                  FILTRO=2:6,
                                  VAR_LIN=pense$DEP_ADMIN,
                                  NOM_VAR_LIN="Dependência Administrativa",
                                  VETOR_LIN=c("Pública", "Privada"),
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

tabela_131 <- rbind(tabela_131_pt1, tabela_131_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.1")
writeData(wb,"1.3.1",tabela_131)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.3.2 ##

table(pense$B01002) #raça

tabela_132 <- modelo2(DESENHO=subset(desenho_validos, B01002!=-2),
                                  VAR_COL="B01002",
                                  NOME_VAR_COL="Raça/Cor",
                                  VETOR_COL=racas,
                                  FILTRO=2:6,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.2")
writeData(wb,"1.3.2",tabela_132)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.3.3 ##

table(pense$B01002) #raça

tabela_133 <- modelo3(DESENHO=subset(desenho_validos, B01002!=-2),
                                  VAR_COL="B01002",
                                  NOME_VAR_COL="Raça/Cor",
                                  VETOR_COL=racas,
                                  FILTRO=2:6,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.3")
writeData(wb,"1.3.3",tabela_133)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.4.1 ##

table(pense$B01026A1) #pretensão após EF
table(pense$B01026A2) #pretensão após EM

tabela_141_pt1 <- modelo1(DESENHO=subset(desenho_validos,
                                               (B01026A1!=-2 & B01026A1!=-1
                                                & B01021A!=5 & B01021A!=6
                                                & B01021A!=7)),
                                VAR_COL="B01026A1",
                                NOME_VAR_COL="Pretensão após Ensino Fundamental",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_141_pt2 <- modelo1_2(DESENHO=subset(desenho_validos,
                                                 (B01026A1!=-2 & B01026A1!=-1
                                                  & B01021A!=5 & B01021A!=6
                                                  & B01021A!=7)),
                                  VAR_COL="B01026A1",
                                  NOME_VAR_COL="Pretensão após Ensino Fundamental",
                                  VETOR_COL=pretensao,
                                  FILTRO=3:7,
                                  VAR_LIN=pense$DEP_ADMIN,
                                  NOM_VAR_LIN="Dependência Administrativa",
                                  VETOR_LIN=c("Pública", "Privada"),
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

tabela_141_pt3 <- modelo1(DESENHO=subset(desenho_validos,
                                               (B01026A2!=-2 & B01026A2!=-1)),
                                VAR_COL="B01026A2",
                                NOME_VAR_COL="Pretensão após Ensino Médio",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_141_pt4 <- modelo1_2(DESENHO=subset(desenho_validos,
                                                 (B01026A2!=-2 & B01026A2!=-1)),
                                  VAR_COL="B01026A2",
                                  NOME_VAR_COL="Pretensão após Ensino Médio",
                                  VETOR_COL=pretensao,
                                  FILTRO=3:7,
                                  VAR_LIN=pense$DEP_ADMIN,
                                  NOM_VAR_LIN="Dependência Administrativa",
                                  VETOR_LIN=c("Pública", "Privada"),
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

tabela_141 <- rbind(tabela_141_pt1, tabela_141_pt2, tabela_141_pt3, tabela_141_pt4)

sum(tabela_141!=tabela_141_teste)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.4.1")
writeData(wb,"1.4.1",tabela_141)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.4.2 ##

table(pense$B01026A1) #pretensão após EF
table(pense$B01026A2) #pretensão após EM

tabela_142_pt1 <- modelo2(DESENHO=subset(desenho_validos,
                                               (B01026A1!=-2 & B01026A1!=-1
                                                & B01021A!=5 & B01021A!=6
                                                & B01021A!=7)),
                                VAR_COL="B01026A1",
                                NOME_VAR_COL="Pretensão após Ensino Fundamental",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_2vars")

tabela_142_pt2 <- modelo2(DESENHO=subset(desenho_validos,
                                               (B01026A2!=-2 & B01026A2!=-1)),
                                VAR_COL="B01026A2",
                                NOME_VAR_COL="Pretensão após Ensino Médio",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_2vars")

tabela_142 <- rbind(tabela_142_pt1, tabela_142_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.4.2")
writeData(wb,"1.4.2",tabela_142)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.4.3 ##

table(pense$B01026A1) #pretensão após EF
table(pense$B01026A2) #pretensão após EM

tabela_143_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                               (B01021A!=5 & B01021A!=6
                                                & B01021A!=7 & B01026A1!=-2
                                                & B01026A1!=-1)),
                                VAR_COL="B01026A1",
                                NOME_VAR_COL="Pretensão após Ensino Fundamental",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_2vars")

tabela_143_pt2 <- modelo3(DESENHO=subset(desenho_validos, (B01026A2!=-2 & B01026A2!=-1)),
                                VAR_COL="B01026A2",
                                NOME_VAR_COL="Pretensão após Ensino Médio",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                fun_estima="estima_pct",
                                fun_arruma="tab_2vars")

tabela_143 <- rbind(tabela_143_pt1, tabela_143_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.4.3")
writeData(wb,"1.4.3",tabela_143)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.4.4 ##

table(pense$B01026A1) #pretensão após EF
table(pense$B01026A2) #pretensão após EM

tabela_144_pt1 <- modelo4(DESENHO=subset(desenho_validos,
                                               (B01021A!=5 & B01021A!=6
                                                & B01021A!=7 & B01026A1!=-2 & B01026A1!=-1)),
                                VAR_COL="B01026A1",
                                NOME_VAR_COL="Pretensão após Ensino Fundamental",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                VAR_LIN=pense$B01001A,
                                NOM_VAR_LIN="Sexo",
                                VETOR_LIN=c("Masculino", "Feminino"),
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_144_pt2 <- modelo4(DESENHO=subset(desenho_validos, (B01026A2!=-2 & B01026A2!=-1)),
                                VAR_COL="B01026A2",
                                NOME_VAR_COL="Pretensão após Ensino Médio",
                                VETOR_COL=pretensao,
                                FILTRO=3:7,
                                VAR_LIN=pense$B01001A,
                                NOM_VAR_LIN="Sexo",
                                VETOR_LIN=c("Masculino", "Feminino"),
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_144 <- rbind(tabela_144_pt1, tabela_144_pt2)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.4.4")
writeData(wb,"1.4.4",tabela_144)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.5.1 ##

table(pense$MORA) #mora com pai e/ou mãe

tabela_151 <- modelo1(DESENHO=subset(desenho_validos, MORA!="Abandono"),
                                  VAR_COL="MORA",
                                  NOME_VAR_COL="Mora com pai e/ou mãe?",
                                  VETOR_COL=mora,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.5.1")
writeData(wb,"1.5.1",tabela_151)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.5.2 ##

table(pense$MORA) #mora com pai e/ou mãe

tabela_152 <- modelo2(DESENHO=subset(desenho_validos, MORA!="Abandono"),
                                  VAR_COL="MORA",
                                  NOME_VAR_COL="Mora com pai e/ou mãe?",
                                  VETOR_COL=mora,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.5.2")
writeData(wb,"1.5.2",tabela_152)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.5.3 ##

table(pense$MORA) #mora com pai e/ou mãe

tabela_153 <- modelo3(DESENHO=subset(desenho_validos, MORA!="Abandono"),
                                  VAR_COL="MORA",
                                  NOME_VAR_COL="Mora com pai e/ou mãe?",
                                  VETOR_COL=mora,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.5.3")
writeData(wb,"1.5.3",tabela_153)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.6.1 ##

table(pense$RESIDENTES) #numero de pessoas no domicilio

tabela_161 <- modelo1(DESENHO=subset(desenho_validos, (pense$RESIDENTES!="Abandono")),
                                  VAR_COL="RESIDENTES",
                                  NOME_VAR_COL="Número de Residentes no Domicílio",
                                  VETOR_COL=residentes,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_3vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.6.1")
writeData(wb,"1.6.1",tabela_161)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.6.2 ##

table(pense$RESIDENTES) #numero de pessoas no domicilio

tabela_162<- modelo2(DESENHO=subset(desenho_validos, (pense$RESIDENTES!="Abandono")),
                                  VAR_COL="RESIDENTES",
                                  NOME_VAR_COL="Número de Residentes no Domicílio",
                                  VETOR_COL=residentes,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.6.2")
writeData(wb,"1.6.2",tabela_162)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.6.3 ##

table(pense$RESIDENTES) #numero de pessoas no domicilio

tabela_163 <- modelo3(DESENHO=subset(desenho_validos, (pense$RESIDENTES!="Abandono")),
                                  VAR_COL="RESIDENTES",
                                  NOME_VAR_COL="Número de Residentes no Domicílio",
                                  VETOR_COL=residentes,
                                  FILTRO=1:4,
                                  fun_estima="estima_pct",
                                  fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.6.3")
writeData(wb,"1.6.3",tabela_163)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.7.1 ##

table(pense$B01014) #celular
table(pense$B01015B) #pc/ notebook
table(pense$B01016) #interet em casa
table(pense$B01017) #carro
table(pense$B01018A) #moto
table(pense$BANHEIRO) #banheiro completo
table(pense$B01020A) #empregado(a) domestico(a)

tabela_171_pt1 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01014!=-2)),
                      VAR_COL="B01014",
                      NOME_VAR_COL="Posse de Bens/Serviços",
                      VETOR_COL="Celular",
                      FILTRO=2,
                      VAR_EXTRA="Dependência Administrativa",
                      VALOR_EXTRA="Pública",
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars")

tabela_171_pt2 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01014!=-2)),
                      VAR_COL="B01014",
                      NOME_VAR_COL="Posse de Bens/Serviços",
                      VETOR_COL="Celular",
                      FILTRO=2,
                      VAR_EXTRA="Dependência Administrativa",
                      VALOR_EXTRA="Privada",
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars")

tabela_171_pt3 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt4 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt5 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt6 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt7 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt8 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt9 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01018A!=-2)),
                          VAR_COL="B01018A",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Moto",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt10 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01018A!=-2)),
                          VAR_COL="B01018A",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Moto",
                          FILTRO=2,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt11 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & pense$BANHEIRO!="Abandono")),
                          VAR_COL="BANHEIRO",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Banheiro Completo em Casa",
                          FILTRO=3,
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars")

tabela_171_pt12 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & pense$BANHEIRO!="Abandono")),
                           VAR_COL="BANHEIRO",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Banheiro Completo em Casa",
                           FILTRO=3,
                           VAR_EXTRA="Dependência Administrativa",
                           VALOR_EXTRA="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_4vars")

tabela_171_pt13 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           VAR_EXTRA="Dependência Administrativa",
                           VALOR_EXTRA="Pública",
                           fun_estima="estima_pct",
                           fun_arruma="tab_4vars")

tabela_171_pt14 <- modelo1(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           VAR_EXTRA="Dependência Administrativa",
                           VALOR_EXTRA="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_4vars")

tabela_171 <- rbind(tabela_171_pt1, tabela_171_pt2, tabela_171_pt3,
                    tabela_171_pt4, tabela_171_pt5, tabela_171_pt6,
                    tabela_171_pt7, tabela_171_pt8, tabela_171_pt9,
                    tabela_171_pt10, tabela_171_pt11, tabela_171_pt12,
                    tabela_171_pt13, tabela_171_pt14)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.7.1")
writeData(wb,"1.7.1",tabela_171)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.7.2 ##

table(pense$B01014) #celular
table(pense$B01015B) #pc/ notebook
table(pense$B01016) #interet em casa
table(pense$B01017) #carro
table(pense$B01018A) #moto
table(pense$BANHEIRO) #banheiro completo
table(pense$B01020A) #empregado(a) domestico(a)

tabela_172_pt1 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01014!=-2)),
                          VAR_COL="B01014",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Celular",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt2 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01014!=-2)),
                          VAR_COL="B01014",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Celular",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt3 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt4 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt5 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt6 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt7 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt8 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt9 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01018A!=-2)),
                          VAR_COL="B01018A",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Moto",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_172_pt10 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01018A!=-2)),
                           VAR_COL="B01018A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Moto",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_172_pt11 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & pense$BANHEIRO!="Abandono")),
                           VAR_COL="BANHEIRO",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Banheiro Completo em Casa",
                           FILTRO=3,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_172_pt12 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & pense$BANHEIRO!="Abandono")),
                           VAR_COL="BANHEIRO",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Banheiro Completo em Casa",
                           FILTRO=3,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_172_pt13 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_172_pt14 <- modelo2(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_172 <- rbind(tabela_172_pt1, tabela_172_pt2, tabela_172_pt3,
                    tabela_172_pt4, tabela_172_pt5, tabela_172_pt6,
                    tabela_172_pt7, tabela_172_pt8, tabela_172_pt9,
                    tabela_172_pt10, tabela_172_pt11, tabela_172_pt12,
                    tabela_172_pt13, tabela_172_pt14)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.7.2")
writeData(wb,"1.7.2",tabela_172)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.7.3 ##

table(pense$B01014) #celular
table(pense$B01015B) #pc/ notebook
table(pense$B01016) #interet em casa
table(pense$B01017) #carro
table(pense$B01018A) #moto
table(pense$BANHEIRO) #banheiro completo
table(pense$B01020A) #empregado(a) domestico(a)

tabela_173_pt1 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01014!=-2)),
                          VAR_COL="B01014",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Celular",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt2 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01014!=-2)),
                          VAR_COL="B01014",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Celular",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt3 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt4 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01015B!=-2)),
                          VAR_COL="B01015B",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Computador/Notebook",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt5 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt6 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01016!=-2)),
                          VAR_COL="B01016",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Internet em Casa",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt7 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt8 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01017!=-2)),
                          VAR_COL="B01017",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Carro",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt9 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01018A!=-2)),
                          VAR_COL="B01018A",
                          NOME_VAR_COL="Posse de Bens/Serviços",
                          VETOR_COL="Moto",
                          FILTRO=2,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública",
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_173_pt10 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01018A!=-2)),
                           VAR_COL="B01018A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Moto",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_173_pt11 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & pense$BANHEIRO!="Abandono")),
                           VAR_COL="BANHEIRO",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Banheiro Completo em Casa",
                           FILTRO=3,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_173_pt12 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & pense$BANHEIRO!="Abandono")),
                           VAR_COL="BANHEIRO",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Banheiro Completo em Casa",
                           FILTRO=3,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_173_pt13 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==1 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_173_pt14 <- modelo3(DESENHO=subset(desenho_validos, (DEP_ADMIN==2 & B01020A!="Abandono")),
                           VAR_COL="B01020A",
                           NOME_VAR_COL="Posse de Bens/Serviços",
                           VETOR_COL="Empregado(a) Doméstico(a)",
                           FILTRO=2,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada",
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_173 <- rbind(tabela_173_pt1, tabela_173_pt2, tabela_173_pt3,
                    tabela_173_pt4, tabela_173_pt5, tabela_173_pt6,
                    tabela_173_pt7, tabela_173_pt8, tabela_173_pt9,
                    tabela_173_pt10, tabela_173_pt11, tabela_173_pt12,
                    tabela_173_pt13, tabela_173_pt14)

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.7.3")
writeData(wb,"1.7.3",tabela_173)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.8.1 ##

table(pense$INSTRUCAO_MAE) #grau de instrucao da mae

tabela_181 <- modelo1_2(DESENHO=subset(desenho_validos, pense$INSTRUCAO_MAE!="Abandono"),
        VAR_COL="INSTRUCAO_MAE",
        NOME_VAR_COL="Grau de Instrução da Mãe",
        VETOR_COL=instrucao_mae,
        FILTRO=2:6,
        VAR_LIN=pense$DEP_ADMIN,
        NOM_VAR_LIN="Dependência Administrativa",
        VETOR_LIN=c("Pública", "Privada"),
        fun_estima="estima_pct",
        fun_arruma="tab_3vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.8.1")
writeData(wb,"1.8.1",tabela_181)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.8.2 ##

table(pense$INSTRUCAO_MAE) #grau de instrucao da mae

tabela_182 <- modelo2(DESENHO=subset(desenho_validos, pense$INSTRUCAO_MAE!="Abandono"),
                        VAR_COL="INSTRUCAO_MAE",
                        NOME_VAR_COL="Grau de Instrução da Mãe",
                        VETOR_COL=instrucao_mae,
                        FILTRO=2:6,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.8.2")
writeData(wb,"1.8.2",tabela_182)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)



## TABELA 1.8.3 ##

table(pense$INSTRUCAO_MAE) #grau de instrucao da mae

tabela_183 <- modelo3(DESENHO=subset(desenho_validos, pense$INSTRUCAO_MAE!="Abandono"),
                      VAR_COL="INSTRUCAO_MAE",
                      NOME_VAR_COL="Grau de Instrução da Mãe",
                      VETOR_COL=instrucao_mae,
                      FILTRO=2:6,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.8.3")
writeData(wb,"1.8.3",tabela_183)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)
