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

tabela_222 <- rbind(tabela_222_pt1, tabela_222_pt2, tabela_222_pt3, tabela_222_pt4)

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
