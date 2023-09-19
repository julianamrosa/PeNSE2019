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

#igual ao 19.2.x, mas com modelo1_2 em vez de modelo1 e sem filtro para PSE
#rodar as 2 primeiras e conferir
#rodar o resto de conferir com MUITA atenção
#salvar
#passar pro 19.4.x