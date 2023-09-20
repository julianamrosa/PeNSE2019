## TABELA 19.1.x ##

table(pense$E01P60) #A escola tem um grupo/comitê para coordenar ações relacionadas à saúde

tabelas_19_1x <- modelo7(var=pense$E01P60,
                         var_string="E01P60",
                         var_titulo="A escola tem um grupo/comitê para coordenar ações relacionadas à saúde",
                         valor="Sim",
                         filtragem=1)

tabela_19_11 <- tabelas_19_1x$tabela1
tabela_19_12 <- tabelas_19_1x$tabela2
tabela_19_13 <- tabelas_19_1x$tabela3

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.1.1")
writeData(wb,"19.1.1",tabela_19_11)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.1.2")
writeData(wb,"19.1.2",tabela_19_12)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.1.3")
writeData(wb,"19.1.3",tabela_19_13)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

## TABELA 19.2.x ##

# Tabela 19.2.1

table(pense$E01P8501) #apoio à vacinação

tabelas_19_21_pt1 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_21_pt2 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_21_pt3 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_21_pt4 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_21_pt5 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_21_pt6 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_21_pt7 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_21_pt8 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_21_pt9 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_21_pt10 <- modelo1(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8510",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de bullying",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_21_pt11 <- modelo1(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_3vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_21_pt12 <- modelo1(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_3vars")
tabela_19_21 <- rbind(tabelas_19_21_pt1, tabelas_19_21_pt2,
                      tabelas_19_21_pt3, tabelas_19_21_pt4,
                      tabelas_19_21_pt5, tabelas_19_21_pt6,
                      tabelas_19_21_pt7, tabelas_19_21_pt8,
                      tabelas_19_21_pt9, tabelas_19_21_pt10,
                      tabelas_19_21_pt11, tabelas_19_21_pt12)

# Tabela 19.2.2

table(pense$E01P8501) #apoio à vacinação

tabelas_19_22_pt1 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_22_pt2 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_22_pt3 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_22_pt4 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_22_pt5 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_22_pt6 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_22_pt7 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_22_pt8 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_22_pt9 <- modelo2(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_22_pt10 <- modelo2(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_22_pt11 <- modelo2(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_22_pt12 <- modelo2(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")
tabela_19_22 <- rbind(tabelas_19_22_pt1, tabelas_19_22_pt2,
                      tabelas_19_22_pt3, tabelas_19_22_pt4,
                      tabelas_19_22_pt5, tabelas_19_22_pt6,
                      tabelas_19_22_pt7, tabelas_19_22_pt8,
                      tabelas_19_22_pt9, tabelas_19_22_pt10,
                      tabelas_19_22_pt11, tabelas_19_22_pt12)

# Tabela 19.2.3

table(pense$E01P8501) #apoio à vacinação

tabelas_19_23_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_23_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_23_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_23_pt4 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_23_pt5 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_23_pt6 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_23_pt7 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_23_pt8 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_23_pt9 <- modelo3(DESENHO=subset(desenho_validos,
                                            pense$E01P61==1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_23_pt10 <- modelo3(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_23_pt11 <- modelo3(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_23_pt12 <- modelo3(DESENHO=subset(desenho_validos,
                                             pense$E01P61==1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas públicas que participam do programa",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")
tabela_19_23 <- rbind(tabelas_19_23_pt1, tabelas_19_23_pt2,
                      tabelas_19_23_pt3, tabelas_19_23_pt4,
                      tabelas_19_23_pt5, tabelas_19_23_pt6,
                      tabelas_19_23_pt7, tabelas_19_23_pt8,
                      tabelas_19_23_pt9, tabelas_19_23_pt10,
                      tabelas_19_23_pt11, tabelas_19_23_pt12)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.2.1")
writeData(wb,"19.2.1",tabela_19_21)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.2.2")
writeData(wb,"19.2.2",tabela_19_22)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.2.3")
writeData(wb,"19.2.3",tabela_19_23)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.3.x ##

# Tabela 19.3.1

table(pense$E01P8501) #apoio à vacinação

tabelas_19_31_pt1 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Apoio à vacinação",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_31_pt2 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da alimentação saudável",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_31_pt3 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde bucal",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_31_pt4 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_31_pt5 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de violências/acidentes",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_31_pt6 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de tabaco",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_31_pt7 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de álcool",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_31_pt8 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_31_pt9 <- modelo1_2(DESENHO=desenho_validos,
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de DSTs",
                             VAR_LIN=pense$DEP_ADMIN,
                             NOM_VAR_LIN="Dependência Administrativa",
                             VETOR_LIN=c("Pública", "Privada"),
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_3vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_31_pt10 <- modelo1_2(DESENHO=desenho_validos,
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de bullying",
                              VAR_LIN=pense$DEP_ADMIN,
                              NOM_VAR_LIN="Dependência Administrativa",
                              VETOR_LIN=c("Pública", "Privada"),
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_3vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_31_pt11 <- modelo1_2(DESENHO=desenho_validos,
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de brigas",
                              VAR_LIN=pense$DEP_ADMIN,
                              NOM_VAR_LIN="Dependência Administrativa",
                              VETOR_LIN=c("Pública", "Privada"),
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_3vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_31_pt12 <- modelo1_2(DESENHO=desenho_validos,
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Nenhuma dessas ações",
                              VAR_LIN=pense$DEP_ADMIN,
                              NOM_VAR_LIN="Dependência Administrativa",
                              VETOR_LIN=c("Pública", "Privada"),
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_3vars")

tabela_19_31 <- rbind(tabelas_19_31_pt1, tabelas_19_31_pt2,
                      tabelas_19_31_pt3, tabelas_19_31_pt4,
                      tabelas_19_31_pt5, tabelas_19_31_pt6,
                      tabelas_19_31_pt7, tabelas_19_31_pt8,
                      tabelas_19_31_pt9, tabelas_19_31_pt10,
                      tabelas_19_31_pt11, tabelas_19_31_pt12)

# Tabela 19.3.2

table(pense$E01P8501) #apoio à vacinação

tabelas_19_32_pt1 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_32_pt2 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_32_pt3 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_32_pt4 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_32_pt5 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_32_pt6 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_32_pt7 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_32_pt8 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_32_pt9 <- modelo2(DESENHO=desenho_validos,
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_32_pt10 <- modelo2(DESENHO=desenho_validos,
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_32_pt11 <- modelo2(DESENHO=desenho_validos,
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_32_pt12 <- modelo2(DESENHO=desenho_validos,
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")
tabela_19_32 <- rbind(tabelas_19_32_pt1, tabelas_19_32_pt2,
                      tabelas_19_32_pt3, tabelas_19_32_pt4,
                      tabelas_19_32_pt5, tabelas_19_32_pt6,
                      tabelas_19_32_pt7, tabelas_19_32_pt8,
                      tabelas_19_32_pt9, tabelas_19_32_pt10,
                      tabelas_19_32_pt11, tabelas_19_32_pt12)

# Tabela 19.3.3

table(pense$E01P8501) #apoio à vacinação

tabelas_19_33_pt1 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_33_pt2 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_33_pt3 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_33_pt4 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_33_pt5 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_33_pt6 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_33_pt7 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_33_pt8 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_33_pt9 <- modelo3(DESENHO=desenho_validos,
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_33_pt10 <- modelo3(DESENHO=desenho_validos,
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_33_pt11 <- modelo3(DESENHO=desenho_validos,
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_33_pt12 <- modelo3(DESENHO=desenho_validos,
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre todas as escolas",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_19_33 <- rbind(tabelas_19_33_pt1, tabelas_19_33_pt2,
                      tabelas_19_33_pt3, tabelas_19_33_pt4,
                      tabelas_19_33_pt5, tabelas_19_33_pt6,
                      tabelas_19_33_pt7, tabelas_19_33_pt8,
                      tabelas_19_33_pt9, tabelas_19_33_pt10,
                      tabelas_19_33_pt11, tabelas_19_33_pt12)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.3.1")
writeData(wb,"19.3.1",tabela_19_31)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.3.2")
writeData(wb,"19.3.2",tabela_19_32)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.3.3")
writeData(wb,"19.3.3",tabela_19_33)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.4.x ##

# Tabela 19.4.1

table(pense$E01P8501) #apoio à vacinação

tabelas_19_41_pt1 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8501",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Apoio à vacinação",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_41_pt2 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8502",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Promoção da alimentação saudável",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_41_pt3 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8503",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Promoção da saúde bucal",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_41_pt4 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8504",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_41_pt5 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8505",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Prevenção de violências/acidentes",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_41_pt6 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8506",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de tabaco",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_41_pt7 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8507",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de álcool",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_41_pt8 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8508",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de crack/outras drogas",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_41_pt9 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                               VAR_COL="E01P8509",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                               VETOR_COL="Prevenção de DSTs",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_41_pt10 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                                VAR_COL="E01P8510",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                                VETOR_COL="Prevenção de bullying",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_41_pt11 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                                VAR_COL="E01P8511",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                                VETOR_COL="Prevenção de brigas",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_41_pt12 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                                VAR_COL="E01P8512",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                                VETOR_COL="Nenhuma dessas ações",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_19_41 <- rbind(tabelas_19_41_pt1, tabelas_19_41_pt2,
                      tabelas_19_41_pt3, tabelas_19_41_pt4,
                      tabelas_19_41_pt5, tabelas_19_41_pt6,
                      tabelas_19_41_pt7, tabelas_19_41_pt8,
                      tabelas_19_41_pt9, tabelas_19_41_pt10,
                      tabelas_19_41_pt11, tabelas_19_41_pt12)

# Tabela 19.4.2

table(pense$E01P8501) #apoio à vacinação

tabelas_19_42_pt1 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_42_pt2 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_42_pt3 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_42_pt4 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_42_pt5 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_42_pt6 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_42_pt7 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_42_pt8 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_42_pt9 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_42_pt10 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_42_pt11 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_42_pt12 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_19_42 <- rbind(tabelas_19_42_pt1, tabelas_19_42_pt2,
                      tabelas_19_42_pt3, tabelas_19_42_pt4,
                      tabelas_19_42_pt5, tabelas_19_42_pt6,
                      tabelas_19_42_pt7, tabelas_19_42_pt8,
                      tabelas_19_42_pt9, tabelas_19_42_pt10,
                      tabelas_19_42_pt11, tabelas_19_42_pt12)

# Tabela 19.4.3

table(pense$E01P8501) #apoio à vacinação

tabelas_19_43_pt1 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_43_pt2 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_43_pt3 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_43_pt4 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_43_pt5 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_43_pt6 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_43_pt7 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_43_pt8 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_43_pt9 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_43_pt10 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_43_pt11 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_43_pt12 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60==1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que têm um comitê sobre saúde",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_19_43 <- rbind(tabelas_19_43_pt1, tabelas_19_43_pt2,
                      tabelas_19_43_pt3, tabelas_19_43_pt4,
                      tabelas_19_43_pt5, tabelas_19_43_pt6,
                      tabelas_19_43_pt7, tabelas_19_43_pt8,
                      tabelas_19_43_pt9, tabelas_19_43_pt10,
                      tabelas_19_43_pt11, tabelas_19_43_pt12)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.4.1")
writeData(wb,"19.4.1",tabela_19_41)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.4.2")
writeData(wb,"19.4.2",tabela_19_42)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.4.3")
writeData(wb,"19.4.3",tabela_19_43)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.5.x ##

# Tabela 19.5.1

table(pense$E01P8501) #apoio à vacinação

tabelas_19_51_pt1 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8501",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Apoio à vacinação",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_51_pt2 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8502",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Promoção da alimentação saudável",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_51_pt3 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8503",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Promoção da saúde bucal",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_51_pt4 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8504",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_51_pt5 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8505",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Prevenção de violências/acidentes",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_51_pt6 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8506",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de tabaco",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_51_pt7 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8507",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de álcool",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_51_pt8 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8508",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Prevenção do uso de crack/outras drogas",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_51_pt9 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                               VAR_COL="E01P8509",
                               NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                               VETOR_COL="Prevenção de DSTs",
                               VAR_LIN=pense$DEP_ADMIN,
                               NOM_VAR_LIN="Dependência Administrativa",
                               VETOR_LIN=c("Pública", "Privada"),
                               FILTRO=2,
                               fun_estima="estima_pct",
                               fun_arruma="tab_3vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_51_pt10 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                                VAR_COL="E01P8510",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                                VETOR_COL="Prevenção de bullying",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_51_pt11 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                                VAR_COL="E01P8511",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                                VETOR_COL="Prevenção de brigas",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_51_pt12 <- modelo1_2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                                VAR_COL="E01P8512",
                                NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                                VETOR_COL="Nenhuma dessas ações",
                                VAR_LIN=pense$DEP_ADMIN,
                                NOM_VAR_LIN="Dependência Administrativa",
                                VETOR_LIN=c("Pública", "Privada"),
                                FILTRO=2,
                                fun_estima="estima_pct",
                                fun_arruma="tab_3vars")

tabela_19_51 <- rbind(tabelas_19_51_pt1, tabelas_19_51_pt2,
                      tabelas_19_51_pt3, tabelas_19_51_pt4,
                      tabelas_19_51_pt5, tabelas_19_51_pt6,
                      tabelas_19_51_pt7, tabelas_19_51_pt8,
                      tabelas_19_51_pt9, tabelas_19_51_pt10,
                      tabelas_19_51_pt11, tabelas_19_51_pt12)

# Tabela 19.5.2

table(pense$E01P8501) #apoio à vacinação

tabelas_19_52_pt1 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_52_pt2 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_52_pt3 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_52_pt4 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_52_pt5 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_52_pt6 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_52_pt7 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_52_pt8 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_52_pt9 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_52_pt10 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_52_pt11 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_52_pt12 <- modelo2(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_19_52 <- rbind(tabelas_19_52_pt1, tabelas_19_52_pt2,
                      tabelas_19_52_pt3, tabelas_19_52_pt4,
                      tabelas_19_52_pt5, tabelas_19_52_pt6,
                      tabelas_19_52_pt7, tabelas_19_52_pt8,
                      tabelas_19_52_pt9, tabelas_19_52_pt10,
                      tabelas_19_52_pt11, tabelas_19_52_pt12)

# Tabela 19.5.3

table(pense$E01P8501) #apoio à vacinação

tabelas_19_53_pt1 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8501",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Apoio à vacinação",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8502) #promoção da alimentação saudável

tabelas_19_53_pt2 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8502",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da alimentação saudável",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8503) #promoção da saúde bucal

tabelas_19_53_pt3 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8503",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde bucal",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8504) #promoção da paz/cidadania/direitos humanos

tabelas_19_53_pt4 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8504",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Promoção da saúde paz/cidadania/direitos humanos",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8505) #prevenção de violências/acidentes

tabelas_19_53_pt5 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8505",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de violências/acidentes",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8506) #prevenção do uso de tabaco

tabelas_19_53_pt6 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8506",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de tabaco",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8507) #prevenção do uso de álcool

tabelas_19_53_pt7 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8507",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de álcool",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8508) #prevenção do uso de crack/outras drogas

tabelas_19_53_pt8 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8508",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção do uso de crack/outras drogas",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8509) #prevenção de DSTs

tabelas_19_53_pt9 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                             VAR_COL="E01P8509",
                             NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                             VETOR_COL="Prevenção de DSTs",
                             FILTRO=2,
                             fun_estima="estima_pct",
                             fun_arruma="tab_2vars")

table(pense$E01P8510) #prevenção de bullying

tabelas_19_53_pt10 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8510",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de bullying",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8511) #prevenção de brigas

tabelas_19_53_pt11 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8511",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Prevenção de brigas",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

table(pense$E01P8512) #nenhuma dessas ações

tabelas_19_53_pt12 <- modelo3(DESENHO=subset(desenho_validos, pense$E01P60!=1),
                              VAR_COL="E01P8512",
                              NOME_VAR_COL="Ações desenvolvidas pelo PSE no último ano, dentre as escolas que não têm um comitê sobre saúde",
                              VETOR_COL="Nenhuma dessas ações",
                              FILTRO=2,
                              fun_estima="estima_pct",
                              fun_arruma="tab_2vars")

tabela_19_53 <- rbind(tabelas_19_53_pt1, tabelas_19_53_pt2,
                      tabelas_19_53_pt3, tabelas_19_53_pt4,
                      tabelas_19_53_pt5, tabelas_19_53_pt6,
                      tabelas_19_53_pt7, tabelas_19_53_pt8,
                      tabelas_19_53_pt9, tabelas_19_53_pt10,
                      tabelas_19_53_pt11, tabelas_19_53_pt12)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.5.1")
writeData(wb,"19.5.1",tabela_19_51)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.5.2")
writeData(wb,"19.5.2",tabela_19_52)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.5.3")
writeData(wb,"19.5.3",tabela_19_53)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.6.x ##

table(pense$E01P64A) #A escola realizou ações conjuntas com a UBS/Equipe de Saúde da Família/Equipe de Atenção Básica

tabelas_19_6x <- modelo7(var=pense$E01P64A,
                         var_string="E01P64A",
                         var_titulo="A escola realizou ações conjuntas com a UBS/Equipe de Saúde da Família/Equipe de Atenção Básica",
                         valor="Sim",
                         filtragem=1)

tabela_19_61 <- tabelas_19_6x$tabela1
tabela_19_62 <- tabelas_19_6x$tabela2
tabela_19_63 <- tabelas_19_6x$tabela3

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.6.1")
writeData(wb,"19.6.1",tabela_19_61)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.6.2")
writeData(wb,"19.6.2",tabela_19_62)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.6.3")
writeData(wb,"19.6.3",tabela_19_63)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.7.x ##

table(pense$E01P65A) #Registro vacinação

tabelas_19_7x <- modelo7(var=pense$E01P65A,
                         var_string="E01P65A",
                         var_titulo="Registros que a escola manteve dos alunos no último ano",
                         valor="Vacinação",
                         filtragem=1)

tabela_19_71 <- tabelas_19_7x$tabela1
tabela_19_72 <- tabelas_19_7x$tabela2
tabela_19_73 <- tabelas_19_7x$tabela3

table(pense$ALERGIA) #Registro alergias/tipo sanguíneo

tabelas_19_7x <- modelo7(var=pense$ALERGIA,
                         var_string="ALERGIA",
                         var_titulo="Registros que a escola manteve dos alunos no último ano",
                         valor="Alergias/Tipo sanguíneo",
                         filtragem=1)

tabela_19_71 <- rbind(tabela_19_71, tabelas_19_7x$tabela1)
tabela_19_72 <- rbind(tabela_19_72, tabelas_19_7x$tabela2)
tabela_19_73 <- rbind(tabela_19_73, tabelas_19_7x$tabela3)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.7.1")
writeData(wb,"19.7.1",tabela_19_71)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.7.2")
writeData(wb,"19.7.2",tabela_19_72)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.7.3")
writeData(wb,"19.7.3",tabela_19_73)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)



## TABELA 19.8.x ##

table(pense$CIGARRO_PROF) #cigarro profs

tabelas_19_8x <- modelo7(var=pense$CIGARRO_PROF,
                         var_string="CIGARRO_PROF",
                         var_titulo="A escola teve conhecimento de consumo de cigarro dentro da escola?",
                         valor="Sim, por parte dos funcionários",
                         filtragem=1)

tabela_19_81 <- tabelas_19_8x$tabela1
tabela_19_82 <- tabelas_19_8x$tabela2
tabela_19_83 <- tabelas_19_8x$tabela3

table(pense$E01P27A) #cigarro alunos

tabelas_19_8x <- modelo7(var=pense$E01P27A,
                         var_string="E01P27A",
                         var_titulo="A escola teve conhecimento de consumo de cigarro dentro da escola?",
                         valor="Sim, por parte dos alunos",
                         filtragem=1)

tabela_19_81 <- rbind(tabela_19_81, tabelas_19_8x$tabela1)
tabela_19_82 <- rbind(tabela_19_82, tabelas_19_8x$tabela2)
tabela_19_83 <- rbind(tabela_19_83, tabelas_19_8x$tabela3)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.8.1")
writeData(wb,"19.8.1",tabela_19_81)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.8.2")
writeData(wb,"19.8.2",tabela_19_82)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema19/Tema19.xlsx")
addWorksheet(wb,"19.8.3")
writeData(wb,"19.8.3",tabela_19_83)
saveWorkbook(wb,"Tema19/Tema19.xlsx",overwrite = TRUE)
