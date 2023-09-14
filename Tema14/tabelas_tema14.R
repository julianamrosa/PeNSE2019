## TABELA 14.1.x ##

table(pense$E01P05B) #A escola possui biblioteca em condicoes de uso

tabelas_14_1x <- modelo7(var=pense$E01P05B,
                         var_string="E01P05B",
                         var_titulo="A escola possui biblioteca em condicoes de uso",
                         valor="Sim",
                         filtragem=1)

tabela_14_11 <- tabelas_14_1x$tabela1
tabela_14_12 <- tabelas_14_1x$tabela2
tabela_14_13 <- tabelas_14_1x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.1.1")
writeData(wb,"14.1.1",tabela_14_11)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.1.2")
writeData(wb,"14.1.2",tabela_14_12)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.1.3")
writeData(wb,"14.1.3",tabela_14_13)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)



## TABELA 14.3.x ##

table(pense$PCS) #A escola possui computadores/tablets em condicoes de uso

tabelas_14_3x <- modelo7(var=pense$PCS,
                         var_string="PCS",
                         var_titulo="A escola possui computadores/tablets em condições de uso",
                         valor="Sim",
                         filtragem=2)

tabela_14_31 <- tabelas_14_3x$tabela1
tabela_14_32 <- tabelas_14_3x$tabela2
tabela_14_33 <- tabelas_14_3x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.3.1")
writeData(wb,"14.3.1",tabela_14_31)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.3.2")
writeData(wb,"14.3.2",tabela_14_32)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.3.3")
writeData(wb,"14.3.3",tabela_14_33)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)



## TABELA 14.4.x ##

table(pense$E01P09A) #Os alunos possuem acesso à internet da escola

tabelas_14_4x <- modelo7(var=pense$E01P09A,
                         var_string="E01P09A",
                         var_titulo="Os alunos possuem acesso à internet da escola",
                         valor="Sim",
                         filtragem=1)

tabela_14_41 <- tabelas_14_4x$tabela1
tabela_14_42 <- tabelas_14_4x$tabela2
tabela_14_43 <- tabelas_14_4x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.4.1")
writeData(wb,"14.4.1",tabela_14_41)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.4.2")
writeData(wb,"14.4.2",tabela_14_42)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.4.3")
writeData(wb,"14.4.3",tabela_14_43)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)



## TABELA 14.5.x ##

table(pense$E01P10B) #A escola possui sala de recursos midia/comunicacao em condicoes de uso

tabelas_14_5x <- modelo7(var=pense$E01P10B,
                         var_string="E01P10B",
                         var_titulo="A escola possui sala de recursos mídia/comunicação em condições de uso",
                         valor="Sim",
                         filtragem=1)

tabela_14_51 <- tabelas_14_5x$tabela1
tabela_14_52 <- tabelas_14_5x$tabela2
tabela_14_53 <- tabelas_14_5x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.5.1")
writeData(wb,"14.5.1",tabela_14_51)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.5.2")
writeData(wb,"14.5.2",tabela_14_52)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.5.3")
writeData(wb,"14.5.3",tabela_14_53)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)



## TABELA 14.6.x ##
#Não bateu! É só uma aproximação
table(pense$CONSELHO) #O conselho escolar se reune ao menos uma vez por ano

tabelas_14_6x <- modelo7(var=pense$CONSELHO,
                         var_string="CONSELHO",
                         var_titulo="O conselho escolar se reune ao menos uma vez por ano",
                         valor="Sim",
                         filtragem=1)

tabela_14_61 <- tabelas_14_6x$tabela1
tabela_14_62 <- tabelas_14_6x$tabela2
tabela_14_63 <- tabelas_14_6x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.6.1")
writeData(wb,"14.6.1",tabela_14_61)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.6.2")
writeData(wb,"14.6.2",tabela_14_62)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.6.3")
writeData(wb,"14.6.3",tabela_14_63)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)


## TABELA 14.8.x ##
#Não bateu! É só uma aproximação
tabela_14_81_pt1 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7301!=-1),
                        VAR_COL="E01P7301",
                        NOME_VAR_COL="Tema deliberado no conselho no último ano",
                        VETOR_COL="Prática de atividade física",
                        FILTRO=3,
                        VAR_LIN=pense$DEP_ADMIN,
                        NOM_VAR_LIN="Dependência Administrativa",
                        VETOR_LIN=c("Pública", "Privada"),
                        fun_estima="estima_pct",
                        fun_arruma="tab_3vars")

tabela_14_81_pt2 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7302!=-1),
                            VAR_COL="E01P7302",
                            NOME_VAR_COL="Segurança/Violência",
                            VETOR_COL="Alimentação",
                            FILTRO=3,
                            VAR_LIN=pense$DEP_ADMIN,
                            NOM_VAR_LIN="Dependência Administrativa",
                            VETOR_LIN=c("Pública", "Privada"),
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_14_81_pt3 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7303!=-1),
                            VAR_COL="E01P7303",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Segurança/Violência",
                            FILTRO=3,
                            VAR_LIN=pense$DEP_ADMIN,
                            NOM_VAR_LIN="Dependência Administrativa",
                            VETOR_LIN=c("Pública", "Privada"),
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_14_81_pt4 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7304!=-1),
                            VAR_COL="E01P7304",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Saúde sexual/reprodutiva",
                            FILTRO=3,
                            VAR_LIN=pense$DEP_ADMIN,
                            NOM_VAR_LIN="Dependência Administrativa",
                            VETOR_LIN=c("Pública", "Privada"),
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_14_81_pt5 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7305!=-1),
                            VAR_COL="E01P7305",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Diversidade sexual e gênero",
                            FILTRO=3,
                            VAR_LIN=pense$DEP_ADMIN,
                            NOM_VAR_LIN="Dependência Administrativa",
                            VETOR_LIN=c("Pública", "Privada"),
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_14_81_pt6 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P7306!=-1),
                            VAR_COL="E01P7306",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Nenhum desses temas",
                            FILTRO=3,
                            VAR_LIN=pense$DEP_ADMIN,
                            NOM_VAR_LIN="Dependência Administrativa",
                            VETOR_LIN=c("Pública", "Privada"),
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_14_81 <- rbind(tabela_14_81_pt1, tabela_14_81_pt2,
                      tabela_14_81_pt3, tabela_14_81_pt4,
                      tabela_14_81_pt5, tabela_14_81_pt6)

tabela_14_82_pt1 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7301!=-1),
                              VAR_COL="E01P7301",
                              NOME_VAR_COL="Tema deliberado no conselho no último ano",
                              VETOR_COL="Prática de atividade física",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82_pt2 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7302!=-1),
                              VAR_COL="E01P7302",
                              NOME_VAR_COL="Segurança/Violência",
                              VETOR_COL="Alimentação",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82_pt3 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7303!=-1),
                              VAR_COL="E01P7303",
                              NOME_VAR_COL="Tema deliberado no conselho no último ano",
                              VETOR_COL="Segurança/Violência",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82_pt4 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7304!=-1),
                              VAR_COL="E01P7304",
                              NOME_VAR_COL="Tema deliberado no conselho no último ano",
                              VETOR_COL="Saúde sexual/reprodutiva",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82_pt5 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7305!=-1),
                              VAR_COL="E01P7305",
                              NOME_VAR_COL="Tema deliberado no conselho no último ano",
                              VETOR_COL="Diversidade sexual e gênero",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82_pt6 <- modelo2(DESENHO=subset(desenho_validos,
                                           pense$E01P7306!=-1),
                              VAR_COL="E01P7306",
                              NOME_VAR_COL="Tema deliberado no conselho no último ano",
                              VETOR_COL="Nenhum desses temas",
                              FILTRO=3,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_14_82 <- rbind(tabela_14_82_pt1, tabela_14_82_pt2,
                      tabela_14_82_pt3, tabela_14_82_pt4,
                      tabela_14_82_pt5, tabela_14_82_pt6)

tabela_14_83_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7301!=-1),
                            VAR_COL="E01P7301",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Prática de atividade física",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7302!=-1),
                            VAR_COL="E01P7302",
                            NOME_VAR_COL="Segurança/Violência",
                            VETOR_COL="Alimentação",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7303!=-1),
                            VAR_COL="E01P7303",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Segurança/Violência",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83_pt4 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7304!=-1),
                            VAR_COL="E01P7304",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Saúde sexual/reprodutiva",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83_pt5 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7305!=-1),
                            VAR_COL="E01P7305",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Diversidade sexual e gênero",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83_pt6 <- modelo3(DESENHO=subset(desenho_validos,
                                           pense$E01P7306!=-1),
                            VAR_COL="E01P7306",
                            NOME_VAR_COL="Tema deliberado no conselho no último ano",
                            VETOR_COL="Nenhum desses temas",
                            FILTRO=3,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_14_83 <- rbind(tabela_14_83_pt1, tabela_14_83_pt2,
                      tabela_14_83_pt3, tabela_14_83_pt4,
                      tabela_14_83_pt5, tabela_14_83_pt6)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.8.1")
writeData(wb,"14.8.1",tabela_14_81)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.8.2")
writeData(wb,"14.8.2",tabela_14_82)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.8.3")
writeData(wb,"14.8.3",tabela_14_83)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

## TABELA 14.9.x ##

table(pense$E01P35) #A escola fica aberta no fim de semana para pratica de acoes pactuadas com a comunidade

tabelas_14_9x <- modelo8(var=pense$E01P35,
                         var_string="E01P35",
                         var_titulo="A escola fica aberta no fim de semana para pratica de acoes pactuadas com a comunidade",
                         valor="Sim",
                         filtragem=2)

tabela_14_91 <- tabelas_14_9x$tabela1
tabela_14_92 <- tabelas_14_9x$tabela2
tabela_14_93 <- tabelas_14_9x$tabela3

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.9.1")
writeData(wb,"14.9.1",tabela_14_91)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.9.2")
writeData(wb,"14.9.2",tabela_14_92)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema14/Tema14.xlsx")
addWorksheet(wb,"14.9.3")
writeData(wb,"14.9.3",tabela_14_93)
saveWorkbook(wb,"Tema14/Tema14.xlsx",overwrite = TRUE)
