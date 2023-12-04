
## TABELA 9.1.x ##
table(pense$B09006A1) #freq usa cinto de segurança no banco da frente
table(pense$CINTO_FRENTE) #freq usa cinto de segurança no banco da frente (agregado)
table(pense$B09006A2) #freq usa cinto de segurança no banco de trás
table(pense$CINTO_TRAS) #freq usa cinto de segurança no banco da trás (agregado)
table(pense$CINTO) #nunca ou raramente usa cinto de segurança no banco da frente ou no de trás

tabelas_9_1x <- modelo5_1(var=pense$CINTO,
                         var_string="CINTO",
                         var_titulo="Frequência com que usa cinto de segurança no banco da frente ou no de trás",
                         valor="Nunca ou raramente",
                         filtragem=3,
                         var_filtro=pense$CINTO,
                         valor_filtro=1)

tabela_9_11 <- tabelas_9_1x$tabela1
tabela_9_12 <- tabelas_9_1x$tabela2
tabela_9_13 <- tabelas_9_1x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.1.1")
writeData(wb,"9.1.1",tabela_9_11)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.1.2")
writeData(wb,"9.1.2",tabela_9_12)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.1.3")
writeData(wb,"9.1.3",tabela_9_13)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.2.x ##
#NÃO BATE
table(pense$B09006A1) #freq usa cinto de segurança no banco da frente
table(pense$CINTO_FRENTE) #freq usa cinto de segurança no banco da frente (agregado)
table(pense$B09006A2) #freq usa cinto de segurança no banco de trás
table(pense$CINTO_TRAS) #freq usa cinto de segurança no banco da trás (agregado)
table(pense$CINTO) #nunca ou raramente usa cinto de segurança no banco da frente ou no de trás

tabelas_9_2x <- modelo5_1(var=pense$CINTO_FRENTE,
                        var_string="CINTO_FRENTE",
                        var_titulo="Localização no banco do passageiro, para os alunos que nunca ou raramente usam cinto de segurança",
                        valor="Banco da frente",
                        filtragem=3,
                        var_filtro=pense$CINTO_FRENTE,
                        valor_filtro=1)

tabela_9_21 <- tabelas_9_2x$tabela1
tabela_9_22 <- tabelas_9_2x$tabela2
tabela_9_23 <- tabelas_9_2x$tabela3

tabelas_9_2x <- modelo5_1(var=pense$CINTO_TRAS,
                        var_string="CINTO_TRAS",
                        var_titulo="Localização no banco do passageiro, para os alunos que nunca ou raramente usam cinto de segurança",
                        valor="Banco de trás",
                        filtragem=3,
                        var_filtro=pense$CINTO_TRAS,
                        valor_filtro=1)

tabela_9_21 <- rbind(tabela_9_21, tabelas_9_2x$tabela1)
tabela_9_22 <- rbind(tabela_9_22, tabelas_9_2x$tabela2)
tabela_9_23 <- rbind(tabela_9_23, tabelas_9_2x$tabela3)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.2.1")
writeData(wb,"9.2.1",tabela_9_21)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.2.2")
writeData(wb,"9.2.2",tabela_9_22)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.2.3")
writeData(wb,"9.2.3",tabela_9_23)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.3.x ##

table(pense$B09007A) #freq usou capacete na moto
table(pense$CAPACETE) #usou capacete ao andar de moto?

tabelas_9_3x <- modelo5_1(var=pense$CAPACETE,
                        var_string="CAPACETE",
                        var_titulo="Usou capacete ao andar de moto",
                        valor="Sim",
                        filtragem=4,
                        var_filtro=pense$CAPACETE,
                        valor_filtro=1)

tabela_9_31 <- tabelas_9_3x$tabela1
tabela_9_32 <- tabelas_9_3x$tabela2
tabela_9_33 <- tabelas_9_3x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.3.1")
writeData(wb,"9.3.1",tabela_9_31)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.3.2")
writeData(wb,"9.3.2",tabela_9_32)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.3.3")
writeData(wb,"9.3.3",tabela_9_33)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.4.x ##

table(pense$B09008) #freq conduziu veículo motorizado
table(pense$DIRIGIU) #conduziu veículo motorizado no último mês

tabelas_9_4x <- modelo5(var=pense$DIRIGIU,
                          var_string="DIRIGIU",
                          var_titulo="Conduziu veículo motorizado no último mês",
                          valor="Sim",
                          filtragem=3)

tabela_9_41 <- tabelas_9_4x$tabela1
tabela_9_42 <- tabelas_9_4x$tabela2
tabela_9_43 <- tabelas_9_4x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.4.1")
writeData(wb,"9.4.1",tabela_9_41)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.4.2")
writeData(wb,"9.4.2",tabela_9_42)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.4.3")
writeData(wb,"9.4.3",tabela_9_43)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.5.x ##

table(pense$B09009) #freq andou em veículo conduzido por alguém alcoolizado
table(pense$MOTORISTA_ALCOOL) #andou em veículo conduzido por alguém alcoolizado

tabelas_9_5x <- modelo5(var=pense$MOTORISTA_ALCOOL,
                        var_string="MOTORISTA_ALCOOL",
                        var_titulo="Andou em veículo conduzido por alguém alcoolizado no último mês",
                        valor="Sim",
                        filtragem=3)

tabela_9_51 <- tabelas_9_5x$tabela1
tabela_9_52 <- tabelas_9_5x$tabela2
tabela_9_53 <- tabelas_9_5x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.5.1")
writeData(wb,"9.5.1",tabela_9_51)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.5.2")
writeData(wb,"9.5.2",tabela_9_52)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.5.3")
writeData(wb,"9.5.3",tabela_9_53)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.6.x ##

table(pense$B09019) #freq andou em veículo conduzido por alguém que estava usando o celular
table(pense$MOTORISTA_CELULAR) #andou em veículo conduzido por alguém que estava usando o celular

tabelas_9_6x <- modelo5(var=pense$MOTORISTA_CELULAR,
                        var_string="MOTORISTA_CELULAR",
                        var_titulo="Andou em veículo conduzido por alguém ue estava usando o celular",
                        valor="Sim",
                        filtragem=3)

tabela_9_61 <- tabelas_9_6x$tabela1
tabela_9_62 <- tabelas_9_6x$tabela2
tabela_9_63 <- tabelas_9_6x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.6.1")
writeData(wb,"9.6.1",tabela_9_61)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.6.2")
writeData(wb,"9.6.2",tabela_9_62)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.6.3")
writeData(wb,"9.6.3",tabela_9_63)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)


## TABELA 9.7.x ##

table(pense$B09001) #freq faltou a escola por não se sentir seguro no caminho
table(pense$FALTOU_MEDO) #faltou a escola por não se sentir seguro no caminho

tabelas_9_7x <- modelo5(var=pense$FALTOU_MEDO,
                        var_string="FALTOU_MEDO",
                        var_titulo="Faltou a escola por não se sentir seguro no caminho",
                        valor="Sim",
                        filtragem=3)

tabela_9_71 <- tabelas_9_7x$tabela1
tabela_9_72 <- tabelas_9_7x$tabela2
tabela_9_73 <- tabelas_9_7x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.7.1")
writeData(wb,"9.7.1",tabela_9_71)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.7.2")
writeData(wb,"9.7.2",tabela_9_72)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.7.3")
writeData(wb,"9.7.3",tabela_9_73)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.8.x ##

table(pense$B09002) #freq faltou a escola por não se sentir seguro lá
table(pense$FALTOU_MEDO_ESCOLA) #faltou a escola por não se sentir seguro lá

tabelas_9_8x <- modelo5(var=pense$FALTOU_MEDO_ESCOLA,
                        var_string="FALTOU_MEDO_ESCOLA",
                        var_titulo="Faltou a escola por não se sentir seguro lá",
                        valor="Sim",
                        filtragem=3)

tabela_9_81 <- tabelas_9_8x$tabela1
tabela_9_82 <- tabelas_9_8x$tabela2
tabela_9_83 <- tabelas_9_8x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.8.1")
writeData(wb,"9.8.1",tabela_9_81)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.8.2")
writeData(wb,"9.8.2",tabela_9_82)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.8.3")
writeData(wb,"9.8.3",tabela_9_83)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.9.x ##

table(pense$B09011A) #esteve envolvido em briga com luta física no último mês

tabelas_9_9x <- modelo5(var=pense$B09011A,
                        var_string="B09011A",
                        var_titulo="Esteve envolvido em briga com luta física no último mês",
                        valor="Sim",
                        filtragem=2)

tabela_9_91 <- tabelas_9_9x$tabela1
tabela_9_92 <- tabelas_9_9x$tabela2
tabela_9_93 <- tabelas_9_9x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.9.1")
writeData(wb,"9.9.1",tabela_9_91)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.9.2")
writeData(wb,"9.9.2",tabela_9_92)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.9.3")
writeData(wb,"9.9.3",tabela_9_93)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.10.x ##

table(pense$B09004) #esteve envolvido em briga com arma de fogo no último mês

tabelas_9_10x <- modelo5(var=pense$B09004,
                        var_string="B09004",
                        var_titulo="Esteve envolvido em briga com arma de fogo no último mês",
                        valor="Sim",
                        filtragem=2)

tabela_9_101 <- tabelas_9_10x$tabela1
tabela_9_102 <- tabelas_9_10x$tabela2
tabela_9_103 <- tabelas_9_10x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.10.1")
writeData(wb,"9.10.1",tabela_9_101)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.10.2")
writeData(wb,"9.10.2",tabela_9_102)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.10.3")
writeData(wb,"9.10.3",tabela_9_103)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.11.x ##

table(pense$B09005) #esteve envolvido em briga com arma branca

tabelas_9_11x <- modelo5(var=pense$B09005,
                         var_string="B09005",
                         var_titulo="Esteve envolvido em briga com arma branca no último mês",
                         valor="Sim",
                         filtragem=2)

tabela_9_111 <- tabelas_9_11x$tabela1
tabela_9_112 <- tabelas_9_11x$tabela2
tabela_9_113 <- tabelas_9_11x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.11.1")
writeData(wb,"9.11.1",tabela_9_111)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.11.2")
writeData(wb,"9.11.2",tabela_9_112)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.11.3")
writeData(wb,"9.11.3",tabela_9_113)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.12.x ##

table(pense$B09012A1) #sofreu acidente/agressão no último ano

tabelas_9_12x <- modelo5(var=pense$B09012A1,
                         var_string="B09012A1",
                         var_titulo="Sofreu acidente/agressão no último ano",
                         valor="Sim",
                         filtragem=2)

tabela_9_121 <- tabelas_9_12x$tabela1
tabela_9_122 <- tabelas_9_12x$tabela2
tabela_9_123 <- tabelas_9_12x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.12.1")
writeData(wb,"9.12.1",tabela_9_121)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.12.2")
writeData(wb,"9.12.2",tabela_9_122)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.12.3")
writeData(wb,"9.12.3",tabela_9_123)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.13.x ##

table(pense$B09012A2) #deixou de realizar atividades habituais por causa do acidente/agressão

tabelas_9_13x <- modelo7(var=pense$B09012A2,
                         var_string="B09012A2",
                         var_titulo="Consequência do acidente/agressão",
                         valor="Deixou de realizar atividades habituais",
                         filtragem=3)

tabela_9_131 <- tabelas_9_13x$tabela1
tabela_9_132 <- tabelas_9_13x$tabela2
tabela_9_133 <- tabelas_9_13x$tabela3

table(pense$B09012A3) #teve que procurar serviço de saúde

tabelas_9_13x <- modelo7(var=pense$B09012A3,
                         var_string="B09012A3",
                         var_titulo="Consequência do acidente/agressão",
                         valor="Teve que procurar serviço de saúde",
                         filtragem=3)

tabela_9_131 <- rbind(tabela_9_131, tabelas_9_13x$tabela1)
tabela_9_132 <- rbind(tabela_9_132, tabelas_9_13x$tabela2)
tabela_9_133 <- rbind(tabela_9_133, tabelas_9_13x$tabela3)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.13.1")
writeData(wb,"9.13.1",tabela_9_131)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.13.2")
writeData(wb,"9.13.2",tabela_9_132)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.13.3")
writeData(wb,"9.13.3",tabela_9_133)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.14.x ##

table(pense$B09013B) #Ferimento/lesão mais grave sofrido no acidente/agressão

tabela_9_141 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09013B!=-2
                                                       & pense$B09013B!=-1)),
                      VAR_COL="B09013B",
                      NOME_VAR_COL="Ferimento/lesão mais grave sofrido no acidente/agressão",
                      VETOR_COL=c("Osso quebrado ou junta deslocada",
                                  "Corte ou perfuração",
                                  "Pancada ou outra lesão na cabeça ou pescoço",
                                  "Ferimento à bala (arma de fogo)",
                                  "Queimadura",
                                  "Outra lesão ou machucado"),
                      FILTRO=3:8,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_9_142 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09013B!=-2
                                                         & pense$B09013B!=-1)),
                        VAR_COL="B09013B",
                        NOME_VAR_COL="Ferimento/lesão mais grave sofrido no acidente/agressão",
                        VETOR_COL=c("Osso quebrado ou junta deslocada",
                                    "Corte ou perfuração",
                                    "Pancada ou outra lesão na cabeça ou pescoço",
                                    "Ferimento à bala (arma de fogo)",
                                    "Queimadura",
                                    "Outra lesão ou machucado"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_9_143 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09013B!=-2
                                                         & pense$B09013B!=-1)),
                        VAR_COL="B09013B",
                        NOME_VAR_COL="Ferimento/lesão mais grave sofrido no acidente/agressão",
                        VETOR_COL=c("Osso quebrado ou junta deslocada",
                                    "Corte ou perfuração",
                                    "Pancada ou outra lesão na cabeça ou pescoço",
                                    "Ferimento à bala (arma de fogo)",
                                    "Queimadura",
                                    "Outra lesão ou machucado"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.14.1")
writeData(wb,"9.14.1",tabela_9_141)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.14.2")
writeData(wb,"9.14.2",tabela_9_142)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.14.3")
writeData(wb,"9.14.3",tabela_9_143)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.15.x ##

table(pense$B09014B) #Principal causa do ferimento/lesão mais grave

tabela_9_151 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09014B!=-2
                                                         & pense$B09014B!=-1)),
                        VAR_COL="B09014B",
                        NOME_VAR_COL="Principal causa do ferimento/lesão mais grave",
                        VETOR_COL=c("Acidente de transporte",
                                    "Agressão ou briga",
                                    "Exercício físico ou esporte",
                                    "Eu me machuquei de propósito",
                                    "Queda acidental",
                                    "Outra causa"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_3vars")

tabela_9_152 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09014B!=-2
                                                         & pense$B09014B!=-1)),
                        VAR_COL="B09014B",
                        NOME_VAR_COL="Principal causa do ferimento/lesão mais grave",
                        VETOR_COL=c("Acidente de transporte",
                                    "Agressão ou briga",
                                    "Exercício físico ou esporte",
                                    "Eu me machuquei de propósito",
                                    "Queda acidental",
                                    "Outra causa"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_9_153 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09014B!=-2
                                                         & pense$B09014B!=-1)),
                        VAR_COL="B09014B",
                        NOME_VAR_COL="Principal causa do ferimento/lesão mais grave",
                        VETOR_COL=c("Acidente de transporte",
                                    "Agressão ou briga",
                                    "Exercício físico ou esporte",
                                    "Eu me machuquei de propósito",
                                    "Queda acidental",
                                    "Outra causa"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.15.1")
writeData(wb,"9.15.1",tabela_9_151)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.15.2")
writeData(wb,"9.15.2",tabela_9_152)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.15.3")
writeData(wb,"9.15.3",tabela_9_153)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.16.x ##

table(pense$B09003A) #freq agredido fisicamente pelos pais/responsaveis
table(pense$AGRESSAO_PAIS) #Foi agredido fisicamente pelos pais/responsáveis no último ano

tabelas_9_16x <- modelo5(var=pense$AGRESSAO_PAIS,
                         var_string="AGRESSAO_PAIS",
                         var_titulo="Foi agredido fisicamente pelos pais/responsáveis no último ano",
                         valor="Sim",
                         filtragem=3)

tabela_9_161 <- tabelas_9_16x$tabela1
tabela_9_162 <- tabelas_9_16x$tabela2
tabela_9_163 <- tabelas_9_16x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.16.1")
writeData(wb,"9.16.1",tabela_9_161)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.16.2")
writeData(wb,"9.16.2",tabela_9_162)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.16.3")
writeData(wb,"9.16.3",tabela_9_163)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.17.x ##

table(pense$B09010A1) #freq agredido fisicamente por outra pessoa
table(pense$AGRESSAO_OUTRA) #Foi agredido fisicamente por outra pessoa (que não seja pai/mãe/responsável)

tabelas_9_17x <- modelo5(var=pense$AGRESSAO_OUTRA,
                         var_string="AGRESSAO_OUTRA",
                         var_titulo="Foi agredido fisicamente por outra pessoa (que não seja pai/mãe/responsável)",
                         valor="Sim",
                         filtragem=3)

tabela_9_171 <- tabelas_9_17x$tabela1
tabela_9_172 <- tabelas_9_17x$tabela2
tabela_9_173 <- tabelas_9_17x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.17.1")
writeData(wb,"9.17.1",tabela_9_171)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.17.2")
writeData(wb,"9.17.2",tabela_9_172)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.17.3")
writeData(wb,"9.17.3",tabela_9_173)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.18.x ##

table(pense$B09010A201) #Agressor do aluno - namorado/ex/ficante

tabela_9_181_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A201!=-2
                                                         & pense$B09010A201!=-1)),
                        VAR_COL="B09010A201",
                        NOME_VAR_COL="Agressor do aluno",
                        VETOR_COL="Namorado/ficante/ex",
                        FILTRO=4,
                        fun_estima="estima_pct",
                        fun_arruma="tab_3vars")

tabela_9_181_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A202!=-2
                                                             & pense$B09010A202!=-1)),
                            VAR_COL="B09010A202",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A203!=-2
                                                             & pense$B09010A203!=-1)),
                            VAR_COL="B09010A203",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A204!=-2
                                                             & pense$B09010A204!=-1)),
                            VAR_COL="B09010A204",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Policial",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181_pt5 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A205!=-2
                                                             & pense$B09010A205!=-1)),
                            VAR_COL="B09010A205",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Funcionário da escola",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181_pt6 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A206!=-2
                                                             & pense$B09010A206!=-1)),
                            VAR_COL="B09010A206",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181_pt7 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09010A207!=-2
                                                             & pense$B09010A207!=-1)),
                            VAR_COL="B09010A207",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_181 <- rbind(tabela_9_181_pt1, tabela_9_181_pt2,
                      tabela_9_181_pt3, tabela_9_181_pt4,
                      tabela_9_181_pt5, tabela_9_181_pt6,
                      tabela_9_181_pt7)

tabela_9_182_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A201!=-2
                                                         & pense$B09010A201!=-1)),
                        VAR_COL="B09010A201",
                        NOME_VAR_COL="Agressor do aluno",
                        VETOR_COL="Namorado/ficante/ex",
                        FILTRO=4,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

tabela_9_182_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A202!=-2
                                                             & pense$B09010A202!=-1)),
                            VAR_COL="B09010A202",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A203!=-2
                                                             & pense$B09010A203!=-1)),
                            VAR_COL="B09010A203",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A204!=-2
                                                             & pense$B09010A204!=-1)),
                            VAR_COL="B09010A204",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Policial",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182_pt5 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A205!=-2
                                                             & pense$B09010A205!=-1)),
                            VAR_COL="B09010A205",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Funcionário da escola",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182_pt6 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A206!=-2
                                                             & pense$B09010A206!=-1)),
                            VAR_COL="B09010A206",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182_pt7 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09010A207!=-2
                                                             & pense$B09010A207!=-1)),
                            VAR_COL="B09010A207",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_182 <- rbind(tabela_9_182_pt1, tabela_9_182_pt2,
                      tabela_9_182_pt3, tabela_9_182_pt4,
                      tabela_9_182_pt5, tabela_9_182_pt6,
                      tabela_9_182_pt7)

tabela_9_183_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A201!=-2
                                                             & pense$B09010A201!=-1)),
                            VAR_COL="B09010A201",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A202!=-2
                                                             & pense$B09010A202!=-1)),
                            VAR_COL="B09010A202",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt3 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A203!=-2
                                                             & pense$B09010A203!=-1)),
                            VAR_COL="B09010A203",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A204!=-2
                                                             & pense$B09010A204!=-1)),
                            VAR_COL="B09010A204",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Policial",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt5 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A205!=-2
                                                             & pense$B09010A205!=-1)),
                            VAR_COL="B09010A205",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Funcionário da escola",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt6 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A206!=-2
                                                             & pense$B09010A206!=-1)),
                            VAR_COL="B09010A206",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183_pt7 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09010A207!=-2
                                                             & pense$B09010A207!=-1)),
                            VAR_COL="B09010A207",
                            NOME_VAR_COL="Agressor do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_183 <- rbind(tabela_9_183_pt1, tabela_9_183_pt2,
                      tabela_9_183_pt3, tabela_9_183_pt4,
                      tabela_9_183_pt5, tabela_9_183_pt6,
                      tabela_9_183_pt7)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.18.1")
writeData(wb,"9.18.1",tabela_9_181)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.18.2")
writeData(wb,"9.18.2",tabela_9_182)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.18.3")
writeData(wb,"9.18.3",tabela_9_183)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.19.x ##

table(pense$B09016A1) #Já foi tocado/manipulado/beijado/teve parte do corpo exposta contra sua vontade

tabelas_9_19x <- modelo5(var=pense$B09016A1,
                         var_string="B09016A1",
                         var_titulo="Já foi tocado/manipulado/beijado/teve parte do corpo exposta contra sua vontade",
                         valor="Sim",
                         filtragem=3)

tabela_9_191 <- tabelas_9_19x$tabela1
tabela_9_192 <- tabelas_9_19x$tabela2
tabela_9_193 <- tabelas_9_19x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.19.1")
writeData(wb,"9.19.1",tabela_9_191)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.19.2")
writeData(wb,"9.19.2",tabela_9_192)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.19.3")
writeData(wb,"9.19.3",tabela_9_193)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.20.x ##

table(pense$B09017A101) #Assediador do aluno - namorado/ex/ficante

tabela_9_201_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A101!=-2
                                                             & pense$B09017A101!=-1)),
                            VAR_COL="B09017A101",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A102!=-2
                                                             & pense$B09017A102!=-1)),
                            VAR_COL="B09017A102",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A103!=-2
                                                             & pense$B09017A103!=-1)),
                            VAR_COL="B09017A103",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A104!=-2
                                                             & pense$B09017A104!=-1)),
                            VAR_COL="B09017A104",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201_pt5 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A105!=-2
                                                             & pense$B09017A105!=-1)),
                            VAR_COL="B09017A105",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201_pt6 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A106!=-2
                                                             & pense$B09017A106!=-1)),
                            VAR_COL="B09017A106",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_201 <- rbind(tabela_9_201_pt1, tabela_9_201_pt2,
                      tabela_9_201_pt3, tabela_9_201_pt4,
                      tabela_9_201_pt5, tabela_9_201_pt6)

tabela_9_202_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A101!=-2
                                                             & pense$B09017A101!=-1)),
                            VAR_COL="B09017A101",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A102!=-2
                                                             & pense$B09017A102!=-1)),
                            VAR_COL="B09017A102",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A103!=-2
                                                             & pense$B09017A103!=-1)),
                            VAR_COL="B09017A103",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A104!=-2
                                                             & pense$B09017A104!=-1)),
                            VAR_COL="B09017A104",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202_pt5 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A105!=-2
                                                             & pense$B09017A105!=-1)),
                            VAR_COL="B09017A105",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202_pt6 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A106!=-2
                                                             & pense$B09017A106!=-1)),
                            VAR_COL="B09017A106",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_202 <- rbind(tabela_9_202_pt1, tabela_9_202_pt2,
                      tabela_9_202_pt3, tabela_9_202_pt4,
                      tabela_9_202_pt5, tabela_9_202_pt6)

tabela_9_203_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A101!=-2
                                                             & pense$B09017A101!=-1)),
                            VAR_COL="B09017A101",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A102!=-2
                                                             & pense$B09017A102!=-1)),
                            VAR_COL="B09017A102",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203_pt3 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A103!=-2
                                                             & pense$B09017A103!=-1)),
                            VAR_COL="B09017A103",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A104!=-2
                                                             & pense$B09017A104!=-1)),
                            VAR_COL="B09017A104",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203_pt5 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A105!=-2
                                                             & pense$B09017A105!=-1)),
                            VAR_COL="B09017A105",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203_pt6 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A106!=-2
                                                             & pense$B09017A106!=-1)),
                            VAR_COL="B09017A106",
                            NOME_VAR_COL="Assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_203 <- rbind(tabela_9_203_pt1, tabela_9_203_pt2,
                      tabela_9_203_pt3, tabela_9_203_pt4,
                      tabela_9_203_pt5, tabela_9_203_pt6)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.20.1")
writeData(wb,"9.20.1",tabela_9_201)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.20.2")
writeData(wb,"9.20.2",tabela_9_202)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.20.3")
writeData(wb,"9.20.3",tabela_9_203)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.21.x ##

table(pense$B09016A2) #Já foi ameaçado/intimidado/obrigado a fazer sexo

tabelas_9_21x <- modelo5(var=pense$B09016A2,
                         var_string="B09016A2",
                         var_titulo="Já foi ameaçado/intimidado/obrigado a fazer sexo",
                         valor="Sim",
                         filtragem=3)

tabela_9_211 <- tabelas_9_21x$tabela1
tabela_9_212 <- tabelas_9_21x$tabela2
tabela_9_213 <- tabelas_9_21x$tabela3

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.21.1")
writeData(wb,"9.21.1",tabela_9_211)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.21.2")
writeData(wb,"9.21.2",tabela_9_212)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.21.3")
writeData(wb,"9.21.3",tabela_9_213)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.22.x ##

table(pense$B09017A201) #Intimidador/assediador do aluno - namorado/ex/ficante

tabela_9_221_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A201!=-2
                                                             & pense$B09017A201!=-1)),
                            VAR_COL="B09017A201",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A202!=-2
                                                             & pense$B09017A202!=-1)),
                            VAR_COL="B09017A202",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221_pt3 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A203!=-2
                                                             & pense$B09017A203!=-1)),
                            VAR_COL="B09017A203",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221_pt4 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A204!=-2
                                                             & pense$B09017A204!=-1)),
                            VAR_COL="B09017A204",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221_pt5 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A205!=-2
                                                             & pense$B09017A205!=-1)),
                            VAR_COL="B09017A205",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221_pt6 <- modelo1(DESENHO=subset(desenho_validos, (pense$B09017A206!=-2
                                                             & pense$B09017A206!=-1)),
                            VAR_COL="B09017A206",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_3vars")

tabela_9_221 <- rbind(tabela_9_221_pt1, tabela_9_221_pt2,
                      tabela_9_221_pt3, tabela_9_221_pt4,
                      tabela_9_221_pt5, tabela_9_221_pt6)

tabela_9_222_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A201!=-2
                                                             & pense$B09017A201!=-1)),
                            VAR_COL="B09017A201",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A202!=-2
                                                             & pense$B09017A202!=-1)),
                            VAR_COL="B09017A202",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222_pt3 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A203!=-2
                                                             & pense$B09017A203!=-1)),
                            VAR_COL="B09017A203",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222_pt4 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A204!=-2
                                                             & pense$B09017A204!=-1)),
                            VAR_COL="B09017A204",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222_pt5 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A205!=-2
                                                             & pense$B09017A205!=-1)),
                            VAR_COL="B09017A205",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222_pt6 <- modelo2(DESENHO=subset(desenho_validos, (pense$B09017A206!=-2
                                                             & pense$B09017A206!=-1)),
                            VAR_COL="B09017A206",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_222 <- rbind(tabela_9_222_pt1, tabela_9_222_pt2,
                      tabela_9_222_pt3, tabela_9_222_pt4,
                      tabela_9_222_pt5, tabela_9_222_pt6)

tabela_9_223_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A201!=-2
                                                             & pense$B09017A201!=-1)),
                            VAR_COL="B09017A201",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Namorado/ficante/ex",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A202!=-2
                                                             & pense$B09017A202!=-1)),
                            VAR_COL="B09017A202",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Amigo",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223_pt3 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A203!=-2
                                                             & pense$B09017A203!=-1)),
                            VAR_COL="B09017A203",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Pai/mãe/padrasto/madrasta",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223_pt4 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A204!=-2
                                                             & pense$B09017A204!=-1)),
                            VAR_COL="B09017A204",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro familiar",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223_pt5 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A205!=-2
                                                             & pense$B09017A205!=-1)),
                            VAR_COL="B09017A205",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Desconhecido",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223_pt6 <- modelo3(DESENHO=subset(desenho_validos, (pense$B09017A206!=-2
                                                             & pense$B09017A206!=-1)),
                            VAR_COL="B09017A206",
                            NOME_VAR_COL="Intimidador/assediador do aluno",
                            VETOR_COL="Outro",
                            FILTRO=4,
                            fun_estima="estima_pct",
                            fun_arruma="tab_2vars")

tabela_9_223 <- rbind(tabela_9_223_pt1, tabela_9_223_pt2,
                      tabela_9_223_pt3, tabela_9_223_pt4,
                      tabela_9_223_pt5, tabela_9_223_pt6)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.22.1")
writeData(wb,"9.22.1",tabela_9_221)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.22.2")
writeData(wb,"9.22.2",tabela_9_222)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.22.3")
writeData(wb,"9.22.3",tabela_9_223)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)



## TABELA 9.23.x ##

table(pense$B09018) #idade assédio
table(pense$IDADE_ASSEDIO) #idade assédio (agregado)

tabela_9_231 <- modelo1_2(DESENHO=subset(desenho_validos, (pense$IDADE_ASSEDIO!=-1
                                                           & pense$IDADE_ASSEDIO!=-2)),
                          VAR_COL="IDADE_ASSEDIO",
                          NOME_VAR_COL="Idade que tinha ao ser ameaçado/intimidado/obrigado a fazer sexo por primeira vez",
                          VETOR_COL=c("Menos de 13 anos", "13 anos",
                                      "14 anos", "15 anos",
                                      "16 anos", "17 anos"),
                          FILTRO=3:8,
                          VAR_LIN=pense$B01001A,
                          NOM_VAR_LIN="Sexo",
                          VETOR_LIN=c("Masculino", "Feminino"),
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars")

tabela_9_232 <- modelo2(DESENHO=subset(desenho_validos, (pense$IDADE_ASSEDIO!=-1
                                                           & pense$IDADE_ASSEDIO!=-2)),
                          VAR_COL="IDADE_ASSEDIO",
                          NOME_VAR_COL="Idade que tinha ao ser ameaçado/intimidado/obrigado a fazer sexo por primeira vez",
                          VETOR_COL=c("Menos de 13 anos", "13 anos",
                                      "14 anos", "15 anos",
                                      "16 anos", "17 anos"),
                          FILTRO=3:8,
                          fun_estima="estima_pct",
                          fun_arruma="tab_2vars")

tabela_9_233 <- modelo3(DESENHO=subset(desenho_validos, (pense$IDADE_ASSEDIO!=-1
                                                         & pense$IDADE_ASSEDIO!=-2)),
                        VAR_COL="IDADE_ASSEDIO",
                        NOME_VAR_COL="Idade que tinha ao ser ameaçado/intimidado/obrigado a fazer sexo por primeira vez",
                        VETOR_COL=c("Menos de 13 anos", "13 anos",
                                    "14 anos", "15 anos",
                                    "16 anos", "17 anos"),
                        FILTRO=3:8,
                        fun_estima="estima_pct",
                        fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.23.1")
writeData(wb,"9.23.1",tabela_9_231)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.23.2")
writeData(wb,"9.23.2",tabela_9_232)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema09/Tema09.xlsx")
addWorksheet(wb,"9.23.3")
writeData(wb,"9.23.3",tabela_9_233)
saveWorkbook(wb,"Tema09/Tema09.xlsx",overwrite = TRUE)
