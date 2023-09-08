## TABELA 5.1.x ##

table(pense$B04001) #já fumou cigarro

tabelas_51x <- modelo5(var=pense$B04001,
                       var_string="B04001",
                       var_titulo="Já fumou cigarro alguma vez?",
                       valor="Sim",
                       filtragem=3)

tabela_511 <- tabelas_51x$tabela1
tabela_512 <- tabelas_51x$tabela2
tabela_513 <- tabelas_51x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.1.1")
writeData(wb,"5.1.1",tabela_511)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.1.2")
writeData(wb,"5.1.2",tabela_512)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.1.3")
writeData(wb,"5.1.3",tabela_513)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.2.x ##

table(pense$CIGARRO) #fumou cigarro por primeira vez com menos de 13 anos

tabelas_52x <- modelo6(var=pense$CIGARRO,
                       var_string="CIGARRO",
                       var_titulo="Idade que tinha quando fumou por primeira vez",
                       valor="Menos de 13 anos",
                       filtragem=3)

tabela_521 <- tabelas_52x$tabela1
tabela_522 <- tabelas_52x$tabela2
tabela_523 <- tabelas_52x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.2.1")
writeData(wb,"5.2.1",tabela_521)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.2.2")
writeData(wb,"5.2.2",tabela_522)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.2.3")
writeData(wb,"5.2.3",tabela_523)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.3.x ##
#Não faz sentido considerar o -1 na conta, mas parece que fizeram isso
table(pense$FUMOU_30DIAS) #fumou cigarro nos últimos 30 dias

tabelas_53x <- modelo6(var=pense$FUMOU_30DIAS,
                       var_string="FUMOU_30DIAS",
                       var_titulo="Fumou cigarro nos últimos 30 dias",
                       valor="Sim",
                       filtragem=4)

tabela_531 <- tabelas_53x$tabela1
tabela_532 <- tabelas_53x$tabela2
tabela_533 <- tabelas_53x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.3.1")
writeData(wb,"5.3.1",tabela_531)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.3.2")
writeData(wb,"5.3.2",tabela_532)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.3.3")
writeData(wb,"5.3.3",tabela_533)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.4.x ##

table(pense$B04009A) #modo de obtenção do cigarro

tabela_541 <- modelo1(DESENHO=subset(desenho_validos, (pense$B04009A=-2
                                     & pense$B04009A!=-1)),
                      VAR_COL="B04009A",
                      NOME_VAR_COL="Modo de obtenção do cigarro",
                      VETOR_COL=c("Comprou em loja",
                                  "Comprou de um vendedor na rua",
                                  "Deu dinheiro para alguém comprar",
                                  "Pediu a alguém",
                                  "Pegou escondido em casa",
                                  "Conseguiu com uma pessoa mais velha",
                                  "Outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_542 <- modelo2(DESENHO=subset(desenho_validos, (pense$B04009A!=-2
                                                       & pense$B04009A!=-1)),
                      VAR_COL="B04009A",
                      NOME_VAR_COL="Modo de obtenção do cigarro",
                      VETOR_COL=c("Comprou em loja",
                                  "Comprou de um vendedor na rua",
                                  "Deu dinheiro para alguém comprar",
                                  "Pediu a alguém",
                                  "Pegou escondido em casa",
                                  "Conseguiu com uma pessoa mais velha",
                                  "Outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_543 <- modelo3(DESENHO=subset(desenho_validos,
                                     (pense$B04009A!=-2
                                      & pense$B04009A!=-1)),
                      VAR_COL="B04009A",
                      NOME_VAR_COL="Modo de obtenção do cigarro",
                      VETOR_COL=c("Comprou em loja",
                                  "Comprou de um vendedor na rua",
                                  "Deu dinheiro para alguém comprar",
                                  "Pediu a alguém",
                                  "Pegou escondido em casa",
                                  "Conseguiu com uma pessoa mais velha",
                                  "Outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.4.1")
writeData(wb,"5.4.1",tabela_541)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.4.2")
writeData(wb,"5.4.2",tabela_542)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.4.3")
writeData(wb,"5.4.3",tabela_543)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.5.x ##

table(pense$B04010) #se recusaram a vender cigarros para o estudante, por motivo de idade

tabelas_55x <- modelo5(var=pense$B04010,
                       var_string="B04010",
                       var_titulo="Se recusaram a vender cigarros para o estudante, por motivo de idade",
                       valor="Sim",
                       filtragem=4)

tabela_551 <- tabelas_55x$tabela1
tabela_552 <- tabelas_55x$tabela2
tabela_553 <- tabelas_55x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.5.1")
writeData(wb,"5.5.1",tabela_551)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.5.2")
writeData(wb,"5.5.2",tabela_552)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.5.3")
writeData(wb,"5.5.3",tabela_553)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.6.x ##

table(pense$B04012) #compraram cigarro por unidade (avulso)

tabelas_56x <- modelo5(var=pense$B04012,
                       var_string="B04012",
                       var_titulo="Compraram cigarro por unidade (avulso)",
                       valor="Sim",
                       filtragem=3)

tabela_561 <- tabelas_56x$tabela1
tabela_562 <- tabelas_56x$tabela2
tabela_563 <- tabelas_56x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.6.1")
writeData(wb,"5.6.1",tabela_561)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.6.2")
writeData(wb,"5.6.2",tabela_562)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.6.3")
writeData(wb,"5.6.3",tabela_563)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.7.x ##

table(pense$B04013) #já experimentou narguilé

tabelas_57x <- modelo5(var=pense$B04013,
                       var_string="B04013",
                       var_titulo="Já experimentou narguilé",
                       valor="Sim",
                       filtragem=3)

tabela_571 <- tabelas_57x$tabela1
tabela_572 <- tabelas_57x$tabela2
tabela_573 <- tabelas_57x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.7.1")
writeData(wb,"5.7.1",tabela_571)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.7.2")
writeData(wb,"5.7.2",tabela_572)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.7.3")
writeData(wb,"5.7.3",tabela_573)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.8.x ##

table(pense$B04014) #já experimentou cigarro eletrônico

tabelas_58x <- modelo5(var=pense$B04014,
                       var_string="B04014",
                       var_titulo="Já experimentou cigarro eletrônico",
                       valor="Sim",
                       filtragem=3)

tabela_581 <- tabelas_58x$tabela1
tabela_582 <- tabelas_58x$tabela2
tabela_583 <- tabelas_58x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.8.1")
writeData(wb,"5.8.1",tabela_581)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.8.2")
writeData(wb,"5.8.2",tabela_582)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.8.3")
writeData(wb,"5.8.3",tabela_583)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.9.x ##

table(pense$B04015) #já experimentou outros produtos do tabaco

tabelas_59x <- modelo5(var=pense$B04015,
                       var_string="B04015",
                       var_titulo="Já experimentou outros produtos do tabaco",
                       valor="Sim",
                       filtragem=3)

tabela_591 <- tabelas_59x$tabela1
tabela_592 <- tabelas_59x$tabela2
tabela_593 <- tabelas_59x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.9.1")
writeData(wb,"5.9.1",tabela_591)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.9.2")
writeData(wb,"5.9.2",tabela_592)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.9.3")
writeData(wb,"5.9.3",tabela_593)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.10.x ##
#Não faz sentido considerar o -1 na conta, mas parece que fizeram isso
table(pense$B04011A02) #narguilé
table(pense$B04011A03) #cigarro eletrônico
table(pense$B04011A04) #cigarro de cravo
table(pense$B04011A05) #cigarro de palha/papel
table(pense$B04011A06) #outros produtos do tabaco
table(pense$B04011A01) #nenhum produto de tabaco

tabela_5101_pt1 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A02=-2)),
                      VAR_COL="B04011A02",
                      NOME_VAR_COL="Tipo de produto do tabaco usado",
                      VETOR_COL="Narguilé",
                      FILTRO=4,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_5101_pt2 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A03=-2)),
                           VAR_COL="B04011A03",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro eletrônico",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_5101_pt3 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A04=-2)),
                           VAR_COL="B04011A04",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de cravo",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_5101_pt4 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A05=-2)),
                           VAR_COL="B04011A05",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de palha/papel",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_5101_pt5 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A06=-2)),
                           VAR_COL="B04011A06",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Outro",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_5101_pt6 <- modelo1(DESENHO=subset(desenho_validos,
                                          (pense$B04011A01=-2)),
                           VAR_COL="B04011A01",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Nenhum",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars")

tabela_5101 <- rbind(tabela_5101_pt1, tabela_5101_pt2,
                     tabela_5101_pt3, tabela_5101_pt4,
                     tabela_5101_pt5, tabela_5101_pt6)

tabela_5102_pt1 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A02!=-2)),
                      VAR_COL="B04011A02",
                      NOME_VAR_COL="Tipo de produto do tabaco usado",
                      VETOR_COL="Narguilé",
                      FILTRO=4,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_5102_pt2 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A03!=-2)),
                           VAR_COL="B04011A03",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro eletrônico",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5102_pt3 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A04!=-2)),
                           VAR_COL="B04011A04",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de cravo",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5102_pt4 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A05!=-2)),
                           VAR_COL="B04011A05",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de palha/papel",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5102_pt5 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A06!=-2)),
                           VAR_COL="B04011A06",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Outro",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5102_pt6 <- modelo2(DESENHO=subset(desenho_validos,
                                          (pense$B04011A01!=-2)),
                           VAR_COL="B04011A01",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Nenhum",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5102 <- rbind(tabela_5102_pt1, tabela_5102_pt2,
                     tabela_5102_pt3, tabela_5102_pt4,
                     tabela_5102_pt5, tabela_5102_pt6)

tabela_5103_pt1 <- modelo3(DESENHO=subset(desenho_validos,
                                     (pense$B04011A02!=-2)),
                      VAR_COL="B04011A02",
                      NOME_VAR_COL="Tipo de produto do tabaco usado",
                      VETOR_COL="Narguilé",
                      FILTRO=4,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_5103_pt2 <- modelo3(DESENHO=subset(desenho_validos,
                                          (pense$B04011A03!=-2)),
                           VAR_COL="B04011A03",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro eletrônico",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5103_pt3 <- modelo3(DESENHO=subset(desenho_validos,
                                          (pense$B04011A04!=-2)),
                           VAR_COL="B04011A04",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de cravo",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5103_pt4 <- modelo3(DESENHO=subset(desenho_validos,
                                          (pense$B04011A05!=-2)),
                           VAR_COL="B04011A05",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Cigarro de palha/papel",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5103_pt5 <- modelo3(DESENHO=subset(desenho_validos,
                                          (pense$B04011A06!=-2)),
                           VAR_COL="B04011A06",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Outro",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5103_pt6 <- modelo3(DESENHO=subset(desenho_validos,
                                          (pense$B04011A01!=-2)),
                           VAR_COL="B04011A01",
                           NOME_VAR_COL="Tipo de produto do tabaco usado",
                           VETOR_COL="Nenhum",
                           FILTRO=4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_2vars")

tabela_5103 <- rbind(tabela_5103_pt1, tabela_5103_pt2,
                     tabela_5103_pt3, tabela_5103_pt4,
                     tabela_5103_pt5, tabela_5103_pt6)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.10.1")
writeData(wb,"5.10.1",tabela_5101)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.10.2")
writeData(wb,"5.10.2",tabela_5102)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.10.3")
writeData(wb,"5.10.3",tabela_5103)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.11.x ##

table(pense$B04006B) #responsável fuma?
table(pense$RESPONSAVEL_FUMA) #pelo menos um responsável fuma?

tabelas_511x <- modelo5(var=pense$RESPONSAVEL_FUMA,
                       var_string="RESPONSAVEL_FUMA",
                       var_titulo="Ao menos um dos pais/responsáveis fuma",
                       valor="Sim",
                       filtragem=4)

tabela_5111 <- tabelas_511x$tabela1
tabela_5112 <- tabelas_511x$tabela2
tabela_5113 <- tabelas_511x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.11.1")
writeData(wb,"5.11.1",tabela_5111)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.11.2")
writeData(wb,"5.11.2",tabela_5112)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.11.3")
writeData(wb,"5.11.3",tabela_5113)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.12.x ##

table(pense$B04005A) #quantos dias fumaram em casa na sua presença, na última semana?
table(pense$FUMARAM_CASA) #fumaram em casa na sua presença, na última semana?

tabelas_512x <- modelo5(var=pense$FUMARAM_CASA,
                        var_string="FUMARAM_CASA",
                        var_titulo="Fumaram em casa na sua presença, na última semana?",
                        valor="Sim",
                        filtragem=4)

tabela_5121 <- tabelas_512x$tabela1
tabela_5122 <- tabelas_512x$tabela2
tabela_5123 <- tabelas_512x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.12.1")
writeData(wb,"5.12.1",tabela_5121)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.12.2")
writeData(wb,"5.12.2",tabela_5122)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.12.3")
writeData(wb,"5.12.3",tabela_5123)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



## TABELA 5.13.x ##

table(pense$B04016) #algum dos seus amigos fumou na sua presença nos últimos 30 dias


tabelas_513x <- modelo5(var=pense$B04016,
                        var_string="B04016",
                        var_titulo="Algum dos seus amigos fumou na sua presença nos últimos 30 dias?",
                        valor="Sim",
                        filtragem=3)

tabela_5131 <- tabelas_513x$tabela1
tabela_5132 <- tabelas_513x$tabela2
tabela_5133 <- tabelas_513x$tabela3

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.13.1")
writeData(wb,"5.13.1",tabela_5131)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.13.2")
writeData(wb,"5.13.2",tabela_5132)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema05/Tema05.xlsx")
addWorksheet(wb,"5.13.3")
writeData(wb,"5.13.3",tabela_5133)
saveWorkbook(wb,"Tema05/Tema05.xlsx",overwrite = TRUE)



