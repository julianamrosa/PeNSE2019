## TABELA 2.1.1 ##

#olhando as categorias das variaveis de interesse
table(pense$FALTOU) #faltou aulas

#montando a tabela
tabela_211_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==1)),
                      VAR_COL="FALTOU",
                      NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                      VETOR_COL="Sim",
                      FILTRO=2,
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars",
                      VAR_EXTRA="Sexo",
                      VALOR_EXTRA="Masculino")

tabela_211_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==2)),
                      VAR_COL="FALTOU",
                      NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                      VETOR_COL="Sim",
                      FILTRO=2,
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars",
                      VAR_EXTRA="Sexo",
                      VALOR_EXTRA="Feminino")

tabela_211_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==1)),
                      VAR_COL="FALTOU",
                      NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                      VETOR_COL="Sim",
                      FILTRO=2,
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars",
                      VAR_EXTRA="Dependência Administrativa",
                      VALOR_EXTRA="Pública")

tabela_211_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==2)),
                      VAR_COL="FALTOU",
                      NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                      VETOR_COL="Sim",
                      FILTRO=2,
                      fun_estima="estima_pct",
                      fun_arruma="tab_4vars",
                      VAR_EXTRA="Dependência Administrativa",
                      VALOR_EXTRA="Privada")

tabela_211 <- rbind(tabela_211_pt1, tabela_211_pt2, tabela_211_pt3, tabela_211_pt4)

#Salvando a planilha
wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.1.1")
writeData(wb,"2.1.1",tabela_211)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)




## TABELA 2.1.2 ##

table(pense$FALTOU) #faltou aulas

tabela_212_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==1)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_212_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==2)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_212_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_212_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_212 <- rbind(tabela_212_pt1, tabela_212_pt2, tabela_212_pt3, tabela_212_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.1.2")
writeData(wb,"2.1.2",tabela_212)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.1.3 ##

table(pense$FALTOU) #faltou aulas

tabela_213_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==1)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_213_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$B01001A==2)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_213_pt3 <- modelo3(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_213_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$FALTOU!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="FALTOU",
                          NOME_VAR_COL="Faltou Aula/Escola sem Permissão",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_213 <- rbind(tabela_213_pt1, tabela_213_pt2, tabela_213_pt3, tabela_213_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.1.3")
writeData(wb,"2.1.3",tabela_213)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.2.1 ##

table(pense$SABE) #pais sabem o que o aluno faz no tempo livre

tabela_221_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono"
                                                           & pense$B01001A==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_221_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$B01001A==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_221_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_221_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_221 <- rbind(tabela_221_pt1, tabela_221_pt2, tabela_221_pt3, tabela_221_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.2.1")
writeData(wb,"2.2.1",tabela_221)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.2.2 ##

table(pense$SABE) #pais sabem o que o aluno faz no tempo livre

tabela_222_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$B01001A==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_222_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$B01001A==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_222_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_222_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_222 <- rbind(tabela_222_pt1, tabela_222_pt2,
                    tabela_222_pt3, tabela_222_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.2.2")
writeData(wb,"2.2.2",tabela_222)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.2.3 ##

table(pense$SABE) #pais sabem o que o aluno faz no tempo livre

tabela_223_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$SABE!="Abandono"
                                          & pense$B01001A==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_223_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$SABE!="Abandono"
                                          & pense$B01001A==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_223_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$SABE!="Abandono"
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_223_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$SABE!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="SABE",
                          NOME_VAR_COL="Seu responsável sabe o que você faz no seu tempo livre?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_223 <- rbind(tabela_223_pt1, tabela_223_pt2, tabela_223_pt3, tabela_223_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.2.3")
writeData(wb,"2.2.3",tabela_223)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.3.1 ##

table(pense$ENTENDE) #pais entendem seus problemas e preocupações

tabela_231_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono"
                                                           & pense$B01001A==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_231_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono"
                                                           & pense$B01001A==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_231_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono"
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_231_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono"
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_231 <- rbind(tabela_231_pt1, tabela_231_pt2,
                    tabela_231_pt3, tabela_231_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.3.1")
writeData(wb,"2.3.1",tabela_231)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.3.2 ##

table(pense$ENTENDE) #pais sabem o que o aluno faz no tempo livre

tabela_232_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono" & pense$B01001A==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_232_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono" & pense$B01001A==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_232_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_232_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_232 <- rbind(tabela_232_pt1, tabela_232_pt2, tabela_232_pt3,
                    tabela_232_pt4)
wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.3.2")
writeData(wb,"2.3.2",tabela_232)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.3.3 ##

table(pense$ENTENDE) #pais entendem seus problemas e preocupações

tabela_233_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$ENTENDE!="Abandono"
                                          & pense$B01001A==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_233_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$ENTENDE!="Abandono"
                                          & pense$B01001A==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_233_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$ENTENDE!="Abandono"
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_233_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$ENTENDE!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="ENTENDE",
                          NOME_VAR_COL="Seu responsável entende seus problemas/preocupações?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_233 <- rbind(tabela_233_pt1, tabela_233_pt2, tabela_233_pt3,
                    tabela_233_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.3.3")
writeData(wb,"2.3.3",tabela_233)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.4.1 ##
table(pense$PRESTATIVOS) #colegas foram prestativos/ trataram bem

tabela_241_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono"
                                                           & pense$B01001A==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_241_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono"
                                                           & pense$B01001A==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_241_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono"
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_241_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono"
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_241 <- rbind(tabela_241_pt1, tabela_241_pt2,
                    tabela_241_pt3, tabela_241_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.4.1")
writeData(wb,"2.4.1",tabela_241)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.4.2 ##

table(pense$PRESTATIVOS) #colegas foram prestativos/ trataram bem

tabela_242_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono" & pense$B01001A==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_242_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono" & pense$B01001A==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_242_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_242_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_242 <- rbind(tabela_242_pt1, tabela_242_pt2, tabela_242_pt3,
                    tabela_242_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.4.2")
writeData(wb,"2.4.2",tabela_242)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.4.3 ##

table(pense$PRESTATIVOS) #colegas foram prestativos/ trataram bem

tabela_243_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$PRESTATIVOS!="Abandono"
                                          & pense$B01001A==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_243_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$PRESTATIVOS!="Abandono"
                                          & pense$B01001A==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_243_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$PRESTATIVOS!="Abandono"
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_243_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$PRESTATIVOS!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="PRESTATIVOS",
                          NOME_VAR_COL="Frequência com que seus colegas foram prestativos/ te trataram bem",
                          VETOR_COL=prestativos,
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_243 <- rbind(tabela_243_pt1, tabela_243_pt2, tabela_243_pt3,
                    tabela_243_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.4.3")
writeData(wb,"2.4.3",tabela_243)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.5.1 ##
table(pense$B07007A) #freq com que se sentiu humilhado

tabela_251_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07007A!=-2
                                                           & pense$B01001A==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_251_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07007A!=-2
                                                           & pense$B01001A==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_251_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07007A!=-2
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_251_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07007A!=-2
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_251 <- rbind(tabela_251_pt1, tabela_251_pt2,
                    tabela_251_pt3, tabela_251_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.5.1")
writeData(wb,"2.5.1",tabela_251)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.5.2 ##

table(pense$B07007A) #freq com que se sentiu humilhado

tabela_252_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07007A!=-2 & pense$B01001A==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_252_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07007A!=-2 & pense$B01001A==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_252_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07007A!=-2 & pense$DEP_ADMIN==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_252_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07007A!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_252 <- rbind(tabela_252_pt1, tabela_252_pt2, tabela_252_pt3,
                    tabela_252_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.5.2")
writeData(wb,"2.5.2",tabela_252)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.5.3 ##

table(pense$B07007A) #freq com que se sentiu humilhado

tabela_253_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07007A!=-2
                                          & pense$B01001A==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_253_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07007A!=-2
                                          & pense$B01001A==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_253_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07007A!=-2
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_253_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B07007A!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07007A",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_253 <- rbind(tabela_253_pt1, tabela_253_pt2, tabela_253_pt3,
                    tabela_253_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.5.3")
writeData(wb,"2.5.3",tabela_253)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.6.1 ##
table(pense$B07008) #motivo/ causa de ter se sentido humilhado

tabela_261 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07008!=-2 & pense$B07008!=-1)),
                          VAR_COL="B07008",
                          NOME_VAR_COL="Motivo de ter se sentido humilhado",
                          VETOR_COL=motivo_humilhacao,
                          FILTRO=3:9,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.6.1")
writeData(wb,"2.6.1",tabela_261)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.6.2 ##

table(pense$B07008) #motivo/ causa de ter se sentido humilhado

tabela_262 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07008!=-2 & pense$B07008!=-1)),
                          VAR_COL="B07008",
                          NOME_VAR_COL="Motivo de ter se sentido humilhado",
                          VETOR_COL=motivo_humilhacao,
                          FILTRO=3:9,
                          fun_estima="estima_pct",
                          fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.6.2")
writeData(wb,"2.6.2",tabela_262)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.6.3 ##

table(pense$B07008) #motivo/ causa de ter se sentido humilhado

tabela_263 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07008!=-2
                                          & pense$B07008!=-1)),
                          VAR_COL="B07008",
                          NOME_VAR_COL="Frequência com que seus colegas te humilharam",
                          VETOR_COL=motivo_humilhacao,
                          FILTRO=3:9,
                          fun_estima="estima_pct",
                          fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.6.3")
writeData(wb,"2.6.3",tabela_263)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.7.1 ##
table(pense$B07011) #freq com que foi ignorado

tabela_271_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07011!=-2
                                                           & pense$B01001A==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_271_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07011!=-2
                                                           & pense$B01001A==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_271_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07011!=-2
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_271_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07011!=-2
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_271 <- rbind(tabela_271_pt1, tabela_271_pt2,
                    tabela_271_pt3, tabela_271_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.7.1")
writeData(wb,"2.7.1",tabela_271)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.7.2 ##

table(pense$B07011) #freq com que foi ignorado

tabela_272_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07011!=-2 & pense$B01001A==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_272_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07011!=-2 & pense$B01001A==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_272_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07011!=-2 & pense$DEP_ADMIN==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_272_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07011!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_272 <- rbind(tabela_272_pt1, tabela_272_pt2, tabela_272_pt3,
                    tabela_272_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.7.2")
writeData(wb,"2.7.2",tabela_272)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.7.3 ##

table(pense$B07011) #freq com que foi ignorado

tabela_273_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07011!=-2
                                          & pense$B01001A==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_273_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07011!=-2
                                          & pense$B01001A==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_273_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07011!=-2
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_273_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B07011!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07011",
                          NOME_VAR_COL="Frequência com que seus colegas te ignoraram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_273 <- rbind(tabela_273_pt1, tabela_273_pt2, tabela_273_pt3,
                    tabela_273_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.7.3")
writeData(wb,"2.7.3",tabela_273)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.8.1 ##
table(pense$B07012) #freq com que foi agredido

tabela_281_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07012!=-2
                                                           & pense$B01001A==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_281_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07012!=-2
                                                           & pense$B01001A==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_281_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07012!=-2
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_281_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07012!=-2
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_281 <- rbind(tabela_281_pt1, tabela_281_pt2,
                    tabela_281_pt3, tabela_281_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.8.1")
writeData(wb,"2.8.1",tabela_281)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.8.2 ##

table(pense$B07012) #freq com que foi agredido

tabela_282_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07012!=-2 & pense$B01001A==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_282_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07012!=-2 & pense$B01001A==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_282_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07012!=-2 & pense$DEP_ADMIN==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_282_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07012!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_282 <- rbind(tabela_282_pt1, tabela_282_pt2, tabela_282_pt3,
                    tabela_282_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.8.2")
writeData(wb,"2.8.2",tabela_282)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.8.3 ##

table(pense$B07012) #freq com que foi agredido

tabela_283_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07012!=-2
                                          & pense$B01001A==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_283_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07012!=-2
                                          & pense$B01001A==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_283_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07012!=-2
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_283_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B07012!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07012",
                          NOME_VAR_COL="Frequência com que seus colegas te agrediram",
                          VETOR_COL=c("Nenhuma vez", "1 vez", "2 ou mais vezes"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_283 <- rbind(tabela_283_pt1, tabela_283_pt2, tabela_283_pt3,
                    tabela_283_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.8.3")
writeData(wb,"2.8.3",tabela_283)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.9.1 ##
table(pense$B07013) #se sentiu ameaçado/ofendido nas redes sociais

tabela_291_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07013!=-2
                                                           & pense$B01001A==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_291_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07013!=-2
                                                           & pense$B01001A==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_291_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07013!=-2
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_291_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07013!=-2
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_291 <- rbind(tabela_291_pt1, tabela_291_pt2,
                    tabela_291_pt3, tabela_291_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.9.1")
writeData(wb,"2.9.1",tabela_291)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.9.2 ##

table(pense$B07013) #se sentiu ameaçado/ofendido nas redes sociais

tabela_292_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07013!=-2 & pense$B01001A==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_292_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07013!=-2 & pense$B01001A==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_292_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07013!=-2 & pense$DEP_ADMIN==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_292_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07013!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_292 <- rbind(tabela_292_pt1, tabela_292_pt2, tabela_292_pt3,
                    tabela_292_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.9.2")
writeData(wb,"2.9.2",tabela_292)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.9.3 ##

table(pense$B07013) #se sentiu ameaçado/ofendido nas redes sociais

tabela_293_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07013!=-2
                                          & pense$B01001A==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_293_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07013!=-2
                                          & pense$B01001A==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_293_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07013!=-2
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_293_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B07013!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07013",
                          NOME_VAR_COL="Você se sentiu ameaçado/ofendido nas redes sociais?",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_293 <- rbind(tabela_293_pt1, tabela_293_pt2, tabela_293_pt3,
                    tabela_293_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.9.3")
writeData(wb,"2.9.3",tabela_293)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.10.1 ##
table(pense$B07009) #humilhou algum colega

tabela_2101_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07009!=-2
                                                           & pense$B01001A==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Masculino")

tabela_2101_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07009!=-2
                                                           & pense$B01001A==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Sexo",
                          VALOR_EXTRA="Feminino")

tabela_2101_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07009!=-2
                                                           & pense$DEP_ADMIN==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_2101_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B07009!=-2
                                                           & pense$DEP_ADMIN==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_2101 <- rbind(tabela_2101_pt1, tabela_2101_pt2,
                    tabela_2101_pt3, tabela_2101_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.10.1")
writeData(wb,"2.10.1",tabela_2101)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.10.2 ##

table(pense$B07009) #humilhou algum colega

tabela_2102_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07009!=-2 & pense$B01001A==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_2102_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07009!=-2 & pense$B01001A==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_2102_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07009!=-2 & pense$DEP_ADMIN==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_2102_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B07009!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_2102 <- rbind(tabela_2102_pt1, tabela_2102_pt2, tabela_2102_pt3,
                    tabela_2102_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.10.2")
writeData(wb,"2.10.2",tabela_2102)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)



## TABELA 2.10.3 ##

table(pense$B07009) #humilhou algum colega

tabela_2103_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07009!=-2
                                          & pense$B01001A==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Masculino")

tabela_2103_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07009!=-2
                                          & pense$B01001A==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN="Feminino")

tabela_2103_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                         (pense$B07009!=-2
                                          & pense$DEP_ADMIN==1)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_2103_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B07009!=-2 & pense$DEP_ADMIN==2)),
                          VAR_COL="B07009",
                          NOME_VAR_COL="Humilhou algum colega",
                          VETOR_COL="Sim",
                          FILTRO=2,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_2103 <- rbind(tabela_2103_pt1, tabela_2103_pt2, tabela_2103_pt3,
                    tabela_2103_pt4)

wb <- loadWorkbook("Tema02/Tema02.xlsx")
addWorksheet(wb,"2.10.3")
writeData(wb,"2.10.3",tabela_2103)
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)
