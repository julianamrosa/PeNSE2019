## TABELA 13.1.x ##

table(pense$B13005) #autoavaliacao do estado de saude
table(pense$ESTADO_SAUDE) #autoavaliacao do estado de saude (agregado)

tabelas_13_1x <- modelo5(var=pense$ESTADO_SAUDE,
                         var_string="ESTADO_SAUDE",
                         var_titulo="Autoavaliação do seu estado de saúde",
                         valor=c("Muito bom ou bom", "Regular",
                                 "Ruim ou muito ruim"),
                         filtragem=2:4)

tabela_13_11 <- tabelas_13_1x$tabela1
tabela_13_12 <- tabelas_13_1x$tabela2
tabela_13_13 <- tabelas_13_1x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.1.1")
writeData(wb,"13.1.1",tabela_13_11)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.1.2")
writeData(wb,"13.1.2",tabela_13_12)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.1.3")
writeData(wb,"13.1.3",tabela_13_13)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.2.x ##

table(pense$B13006) #freq faltou a escola alguma vez por motivo de saude
table(pense$FALTOU_SAUDE) #faltou a escola alguma vez por motivo de saude

tabelas_13_2x <- modelo5(var=pense$FALTOU_SAUDE,
                         var_string="FALTOU_SAUDE",
                         var_titulo="Faltou a escola alguma vez por motivo de saúde, no último ano",
                         valor="Sim",
                         filtragem=3)

tabela_13_21 <- tabelas_13_2x$tabela1
tabela_13_22 <- tabelas_13_2x$tabela2
tabela_13_23 <- tabelas_13_2x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.2.1")
writeData(wb,"13.2.1",tabela_13_21)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.2.2")
writeData(wb,"13.2.2",tabela_13_22)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.2.3")
writeData(wb,"13.2.3",tabela_13_23)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.3.x ##

table(pense$B13001) #procurou algum serviço para atendimento de saúde no último ano

tabelas_13_3x <- modelo5(var=pense$B13001,
                         var_string="B13001",
                         var_titulo="Procurou algum serviço para atendimento de saúde no último ano",
                         valor="Sim",
                         filtragem=2)

tabela_13_31 <- tabelas_13_3x$tabela1
tabela_13_32 <- tabelas_13_3x$tabela2
tabela_13_33 <- tabelas_13_3x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.3.1")
writeData(wb,"13.3.1",tabela_13_31)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.3.2")
writeData(wb,"13.3.2",tabela_13_32)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.3.3")
writeData(wb,"13.3.3",tabela_13_33)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.4.x ##

table(pense$B13002A) #serviços mais procurados
table(pense$SERVICO_SAUDE) #serviços mais procurados (agregado)

tabela_13_41 <- modelo1_2(DESENHO=subset(desenho_validos,
                                         (pense$SERVICO_SAUDE!=-2
                                          & pense$SERVICO_SAUDE!=-1)),
                          VAR_COL="SERVICO_SAUDE",
                          NOME_VAR_COL="Serviços de saúde mais procurados",
                          VETOR_COL=c("Unidade Básica de Saúde",
                                      "Consultório médico/ clínica particular ou consultório de outro profissional de saúde",
                                      "Hospital, Policlínica, Pronto-socorro, emergência ou UPA",
                                      "Outros"),
                          FILTRO=3:6,
                          VAR_LIN=pense$DEP_ADMIN,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN=c("Pública", "Privada"),
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_13_42 <- modelo2(DESENHO=subset(desenho_validos,
                                       (pense$SERVICO_SAUDE!=-2
                                        & pense$SERVICO_SAUDE!=-1)),
                        VAR_COL="SERVICO_SAUDE",
                        NOME_VAR_COL="Serviços de saúde mais procurados",
                        VETOR_COL=c("Unidade Básica de Saúde",
                                    "Consultório médico/ clínica particular ou consultório de outro profissional de saúde",
                                    "Hospital, Policlínica, Pronto-socorro, emergência ou UPA",
                                    "Outros"),
                        FILTRO=3:6,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_13_43 <- modelo3(DESENHO=subset(desenho_validos,
                                       (pense$SERVICO_SAUDE!=-2
                                        & pense$SERVICO_SAUDE!=-1)),
                        VAR_COL="SERVICO_SAUDE",
                        NOME_VAR_COL="Serviços de saúde mais procurados",
                        VETOR_COL=c("Unidade Básica de Saúde",
                                    "Consultório médico/ clínica particular ou consultório de outro profissional de saúde",
                                    "Hospital, Policlínica, Pronto-socorro, emergência ou UPA",
                                    "Outros"),
                        FILTRO=3:6,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.4.1")
writeData(wb,"13.4.1",tabela_13_41)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.4.2")
writeData(wb,"13.4.2",tabela_13_42)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.4.3")
writeData(wb,"13.4.3",tabela_13_43)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.5.x ##

table(pense$B13003A) #freq procurou uma ubs no ultimo ano
table(pense$UBS) #procurou uma ubs no ultimo ano

tabelas_13_5x <- modelo5(var=pense$UBS,
                         var_string="UBS",
                         var_titulo="Procurou uma Unidade Básica de Saúde no último ano",
                         valor="Sim",
                         filtragem=4)

tabela_13_51 <- tabelas_13_5x$tabela1
tabela_13_52 <- tabelas_13_5x$tabela2
tabela_13_53 <- tabelas_13_5x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.5.1")
writeData(wb,"13.5.1",tabela_13_51)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.5.2")
writeData(wb,"13.5.2",tabela_13_52)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.5.3")
writeData(wb,"13.5.3",tabela_13_53)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.6.x ##

table(pense$B13004B) #você foi atendido numa ubs na ultima vez que procurou uma

tabelas_13_6x <- modelo5(var=pense$B13004B,
                         var_string="B13004B",
                         var_titulo="Você foi atendido na última vez que procurou uma UBS?",
                         valor="Sim",
                         filtragem=3)

tabela_13_61 <- tabelas_13_6x$tabela1
tabela_13_62 <- tabelas_13_6x$tabela2
tabela_13_63 <- tabelas_13_6x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.6.1")
writeData(wb,"13.6.1",tabela_13_61)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.6.2")
writeData(wb,"13.6.2",tabela_13_62)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.6.3")
writeData(wb,"13.6.3",tabela_13_63)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.7.x ##

table(pense$B13007A) #principal motivo para procurar uma ubs
table(pense$MOTIVO_UBS) #principal motivo para procurar uma ubs (agregado)

tabela_13_71 <- modelo1_2(DESENHO=subset(desenho_validos,
                                         (pense$MOTIVO_UBS!=-2
                                          & pense$MOTIVO_UBS!=-1)),
                          VAR_COL="MOTIVO_UBS",
                          NOME_VAR_COL="Principais motivos para ter procurado uma UBS",
                          VETOR_COL=c("Apoio para controle de peso",
                                      "Acidente/lesão ou fisioterapia/reabilitação",
                                      "Procurar dentista",
                                      "Procurar psicólogo",
                                      "Vacinação",
                                      "Doença",
                                      "Outros"),
                          FILTRO=3:9,
                          VAR_LIN=pense$DEP_ADMIN,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN=c("Pública", "Privada"),
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_13_72 <- modelo2(DESENHO=subset(desenho_validos,
                                       (pense$MOTIVO_UBS!=-2
                                        & pense$MOTIVO_UBS!=-1)),
                        VAR_COL="MOTIVO_UBS",
                        NOME_VAR_COL="Principais motivos para ter procurado uma UBS",
                        VETOR_COL=c("Apoio para controle de peso",
                                    "Acidente/lesão ou fisioterapia/reabilitação",
                                    "Procurar dentista",
                                    "Procurar psicólogo",
                                    "Vacinação",
                                    "Doença",
                                    "Outros"),
                        FILTRO=3:9,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_13_73 <- modelo3(DESENHO=subset(desenho_validos,
                                       (pense$MOTIVO_UBS!=-2
                                        & pense$MOTIVO_UBS!=-1)),
                        VAR_COL="MOTIVO_UBS",
                        NOME_VAR_COL="Principais motivos para ter procurado uma UBS",
                        VETOR_COL=c("Apoio para controle de peso",
                                    "Acidente/lesão ou fisioterapia/reabilitação",
                                    "Procurar dentista",
                                    "Procurar psicólogo",
                                    "Vacinação",
                                    "Doença",
                                    "Outros"),
                        FILTRO=3:9,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.7.1")
writeData(wb,"13.7.1",tabela_13_71)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.7.2")
writeData(wb,"13.7.2",tabela_13_72)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.7.3")
writeData(wb,"13.7.3",tabela_13_73)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.8.x ##

table(pense$B13009A) #você foi vacinado contra hpv

tabelas_13_8x <- modelo5(var=pense$B13009A,
                         var_string="B13009A",
                         var_titulo="Você foi vacinado contra HPV?",
                         valor="Sim",
                         filtragem=2)

tabela_13_81 <- tabelas_13_8x$tabela1
tabela_13_82 <- tabelas_13_8x$tabela2
tabela_13_83 <- tabelas_13_8x$tabela3

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.8.1")
writeData(wb,"13.8.1",tabela_13_81)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.8.2")
writeData(wb,"13.8.2",tabela_13_82)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.8.3")
writeData(wb,"13.8.3",tabela_13_83)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)



## TABELA 13.9.x ##

table(pense$B13012) #motivo para não ter se vacinado contra hpv

tabela_13_91 <- modelo1_2(DESENHO=subset(desenho_validos,
                                         (pense$B13012!=-2
                                          & pense$B13012!=-1)),
                          VAR_COL="B13012",
                          NOME_VAR_COL="Motivo para não ter se vacinado contra HPV",
                          VETOR_COL=c("Não sabia que tinha que tomar",
                                      "Distância ou dificuldade para ir até a unidade ou serviço",
                                      "Medo de reação à vacina",
                                      "Não sabia para que servia",
                                      "Não acreditava no efeito da vacina",
                                      "Mãe, pai ou responsável não quis vaciná-lo(a)",
                                      "Outro motivo"),
                          FILTRO=3:9,
                          VAR_LIN=pense$DEP_ADMIN,
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN=c("Pública", "Privada"),
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_13_92 <- modelo2(DESENHO=subset(desenho_validos,
                                       (pense$B13012!=-2
                                        & pense$B13012!=-1)),
                        VAR_COL="B13012",
                        NOME_VAR_COL="Motivo para não ter se vacinado contra HPV",
                        VETOR_COL=c("Não sabia que tinha que tomar",
                                    "Distância ou dificuldade para ir até a unidade ou serviço",
                                    "Medo de reação à vacina",
                                    "Não sabia para que servia",
                                    "Não acreditava no efeito da vacina",
                                    "Mãe, pai ou responsável não quis vaciná-lo(a)",
                                    "Outro motivo"),
                        FILTRO=3:9,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_13_93 <- modelo3(DESENHO=subset(desenho_validos,
                                       (pense$B13012!=-2
                                        & pense$B13012!=-1)),
                        VAR_COL="B13012",
                        NOME_VAR_COL="Motivo para não ter se vacinado contra HPV",
                        VETOR_COL=c("Não sabia que tinha que tomar",
                                    "Distância ou dificuldade para ir até a unidade ou serviço",
                                    "Medo de reação à vacina",
                                    "Não sabia para que servia",
                                    "Não acreditava no efeito da vacina",
                                    "Mãe, pai ou responsável não quis vaciná-lo(a)",
                                    "Outro motivo"),
                        FILTRO=3:9,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.9.1")
writeData(wb,"13.9.1",tabela_13_91)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.9.2")
writeData(wb,"13.9.2",tabela_13_92)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema13/Tema13.xlsx")
addWorksheet(wb,"13.9.3")
writeData(wb,"13.9.3",tabela_13_93)
saveWorkbook(wb,"Tema13/Tema13.xlsx",overwrite = TRUE)
