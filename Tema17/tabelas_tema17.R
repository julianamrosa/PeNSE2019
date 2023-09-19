## TABELA 17.1.x ##

table(pense$ROUBO) #Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano

tabelas_17_11_pt1 <- modelo1_2(DESENHO=desenho_validos,
                           VAR_COL="ROUBO",
                           NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                           VETOR_COL="Roubos/assaltos",
                           FILTRO=3,
                           VAR_LIN=pense$DEP_ADMIN,
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN=c("Pública", "Privada"),
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

table(pense$TIROS)

tabelas_17_11_pt2 <- modelo1_2(DESENHO=desenho_validos,
                               VAR_COL="TIROS",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Tiros/tiroteios",
                               FILTRO=3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$VENDA_DROGAS)

tabelas_17_11_pt3 <- modelo1_2(DESENHO=desenho_validos,
                               VAR_COL="VENDA_DROGAS",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Venda de drogas",
                               FILTRO=3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$AGRESSAO_FISICA)

tabelas_17_11_pt4 <- modelo1_2(DESENHO=desenho_validos,
                               VAR_COL="AGRESSAO_FISICA",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Agressão física",
                               FILTRO=3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$ASSASSINATO)

tabelas_17_11_pt5 <- modelo1_2(DESENHO=desenho_validos,
                               VAR_COL="ASSASSINATO",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Assassinato",
                               FILTRO=3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$VIOLENCIA_SEXUAL)

tabelas_17_11_pt6 <- modelo1_2(DESENHO=desenho_validos,
                               VAR_COL="VIOLENCIA_SEXUAL",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Violência sexual",
                               FILTRO=3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_11 <- rbind(tabelas_17_11_pt1, tabelas_17_11_pt2,
                       tabelas_17_11_pt3, tabelas_17_11_pt4,
                       tabelas_17_11_pt5, tabelas_17_11_pt6)

tabelas_17_12_pt1 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="ROUBO",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Roubos/assaltos",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

table(pense$TIROS)

tabelas_17_12_pt2 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="TIROS",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Tiros/tiroteios",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

table(pense$VENDA_DROGAS)

tabelas_17_12_pt3 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="VENDA_DROGAS",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Venda de drogas",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

table(pense$AGRESSAO_FISICA)

tabelas_17_12_pt4 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="AGRESSAO_FISICA",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Agressão física",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

table(pense$ASSASSINATO)

tabelas_17_12_pt5 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="ASSASSINATO",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Assassinato",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

table(pense$VIOLENCIA_SEXUAL)

tabelas_17_12_pt6 <- modelo2(DESENHO=desenho_validos,
                               VAR_COL="VIOLENCIA_SEXUAL",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                               VETOR_COL="Violência sexual",
                               FILTRO=3,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_12 <- rbind(tabelas_17_12_pt1, tabelas_17_12_pt2,
                       tabelas_17_12_pt3, tabelas_17_12_pt4,
                       tabelas_17_12_pt5, tabelas_17_12_pt6)

tabelas_17_13_pt1 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="ROUBO",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Roubos/assaltos",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$TIROS)

tabelas_17_13_pt2 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="TIROS",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Tiros/tiroteios",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$VENDA_DROGAS)

tabelas_17_13_pt3 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="VENDA_DROGAS",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Venda de drogas",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$AGRESSAO_FISICA)

tabelas_17_13_pt4 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="AGRESSAO_FISICA",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Agressão física",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$ASSASSINATO)

tabelas_17_13_pt5 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="ASSASSINATO",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Assassinato",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$VIOLENCIA_SEXUAL)

tabelas_17_13_pt6 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="VIOLENCIA_SEXUAL",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano",
                             VETOR_COL="Violência sexual",
                             FILTRO=3,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_13 <- rbind(tabelas_17_13_pt1, tabelas_17_13_pt2,
                       tabelas_17_13_pt3, tabelas_17_13_pt4,
                       tabelas_17_13_pt5, tabelas_17_13_pt6)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.1.1")
writeData(wb,"17.1.1",tabelas_17_11)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.1.2")
writeData(wb,"17.1.2",tabelas_17_12)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.1.3")
writeData(wb,"17.1.3",tabelas_17_13)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

## TABELA 17.2.x ##

table(pense$SUSPENDER_AULAS) #Situações de violência próximas da escola das quais o diretor ficou sabendo com frequência no último ano

tabelas_17_21 <- modelo1_2(DESENHO=subset(desenho_validos, pense$SUSPENDER_AULAS!=-1),
                               VAR_COL="SUSPENDER_AULAS",
                               NOME_VAR_COL="Frequência com que a escola teve de suspender as aulas por motivo de segurança no último ano",
                               VETOR_COL=c("1 vez", "2 vezes ou mais"),
                               FILTRO=2:3,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_22 <- modelo2(DESENHO=subset(desenho_validos, pense$SUSPENDER_AULAS!=-1),
                           VAR_COL="SUSPENDER_AULAS",
                           NOME_VAR_COL="Frequência com que a escola teve de suspender as aulas por motivo de segurança no último ano",
                           VETOR_COL=c("1 vez", "2 vezes ou mais"),
                           FILTRO=2:3,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabelas_17_23 <- modelo3(DESENHO=subset(desenho_validos, pense$SUSPENDER_AULAS!=-1),
                         VAR_COL="SUSPENDER_AULAS",
                         NOME_VAR_COL="Frequência com que a escola teve de suspender as aulas por motivo de segurança no último ano",
                         VETOR_COL=c("1 vez", "2 vezes ou mais"),
                         FILTRO=2:3,
                         fun_estima="estima_pct",
                         fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.2.1")
writeData(wb,"17.2.1",tabelas_17_21)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.2.2")
writeData(wb,"17.2.2",tabelas_17_22)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.2.3")
writeData(wb,"17.2.3",tabelas_17_23)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

#B09001

## TABELA 17.3.x ##

# 17.3.1

tabelas_17_31_pt0 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ALGUMA_VIOLENCIA",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Alguma situação de violênica",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt1 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ROUBO2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Roubos/assaltos",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt2 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="TIROS2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Tiros/tiroteios",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt3 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="VENDA_DROGAS2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Venda de drogas",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt4 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="AGRESSAO_FISICA2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Agressão física",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt5 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ASSASSINATO2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Assassinato",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabelas_17_31_pt6 <- modelo1_2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="VIOLENCIA_SEXUAL2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Violência sexual",
                               FILTRO=2,
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

tabela_17_31 <- rbind(tabelas_17_31_pt0, tabelas_17_31_pt1,
                      tabelas_17_31_pt2, tabelas_17_31_pt3,
                      tabelas_17_31_pt4, tabelas_17_31_pt5,
                      tabelas_17_31_pt6)

tabela_17_31$Filtro <- "Escolares que deixaram de ir à escola pelo menos um dia nos últimos 30 dias por não se sentirem seguros no caminho para a escola ou da escola para casa"

# 17.3.2

tabelas_17_32_pt0 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ALGUMA_VIOLENCIA",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Alguma situação de violênica",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt1 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ROUBO2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Roubos/assaltos",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt2 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="TIROS2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Tiros/tiroteios",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt3 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="VENDA_DROGAS2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Venda de drogas",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt4 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="AGRESSAO_FISICA2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Agressão física",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt5 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="ASSASSINATO2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Assassinato",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabelas_17_32_pt6 <- modelo2(DESENHO=subset(desenho_validos,
                                              pense$FALTOU_MEDO==2),
                               VAR_COL="VIOLENCIA_SEXUAL2",
                               NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                               VETOR_COL="Violência sexual",
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_2vars")

tabela_17_32 <- rbind(tabelas_17_32_pt0, tabelas_17_32_pt1,
                      tabelas_17_32_pt2, tabelas_17_32_pt3,
                      tabelas_17_32_pt4, tabelas_17_32_pt5,
                      tabelas_17_32_pt6)

tabela_17_32$Filtro <- "Escolares que deixaram de ir à escola pelo menos um dia nos últimos 30 dias por não se sentirem seguros no caminho para a escola ou da escola para casa"

# 17.3.3

tabelas_17_33_pt0 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="ALGUMA_VIOLENCIA",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Alguma situação de violênica",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="ROUBO2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Roubos/assaltos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="TIROS2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Tiros/tiroteios",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="VENDA_DROGAS2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Venda de drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt4 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="AGRESSAO_FISICA2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Agressão física",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt5 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="ASSASSINATO2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Assassinato",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabelas_17_33_pt6 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$FALTOU_MEDO==2),
                             VAR_COL="VIOLENCIA_SEXUAL2",
                             NOME_VAR_COL="Situações de violência próximas da escola das quais o diretor ficou sabendo no último ano",
                             VETOR_COL="Violência sexual",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

tabela_17_33 <- rbind(tabelas_17_33_pt0, tabelas_17_33_pt1,
                      tabelas_17_33_pt2, tabelas_17_33_pt3,
                      tabelas_17_33_pt4, tabelas_17_33_pt5,
                      tabelas_17_33_pt6)

tabela_17_33$Filtro <- "Escolares que deixaram de ir à escola pelo menos um dia nos últimos 30 dias por não se sentirem seguros no caminho para a escola ou da escola para casa"

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.3.1")
writeData(wb,"17.3.1",tabela_17_31)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.3.2")
writeData(wb,"17.3.2",tabela_17_32)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema17/Tema17.xlsx")
addWorksheet(wb,"17.3.3")
writeData(wb,"17.3.3",tabela_17_33)
saveWorkbook(wb,"Tema17/Tema17.xlsx",overwrite = TRUE)
