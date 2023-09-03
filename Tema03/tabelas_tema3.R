## TABELA 3.1.x ##

table(pense$B02028) #refrigerante
table(pense$B02029) #suco de caixa/lata
table(pense$B02030) #refresco em pó
table(pense$B02031) #bebida achocolatada
table(pense$B02032) #iogurte

startTime <- Sys.time()
tabelas_31x <- modelo5(var=pense$B02028,
                       var_string="B02028",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Refrigerante",
                       filtragem=2)
endTime <- Sys.time()

tabela311 <- tabelas_31x$tabela1
tabela312 <- tabelas_31x$tabela2
tabela313 <- tabelas_31x$tabela3

startTime <- Sys.time()
tabelas_31x <- modelo5(var=pense$B02029,
                       var_string="B02029",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Suco em caixa/lata",
                       filtragem=2)
endTime <- Sys.time()

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

startTime <- Sys.time()
tabelas_31x <- modelo5(var=pense$B02030,
                       var_string="B02030",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Refresco em pó",
                       filtragem=2)
endTime <- Sys.time()

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

startTime <- Sys.time()
tabelas_31x <- modelo5(var=pense$B02031,
                       var_string="B02031",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Bebida achocolatada",
                       filtragem=2)
endTime <- Sys.time()

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

startTime <- Sys.time()
tabelas_31x <- modelo5(var=pense$B02032,
                       var_string="B02032",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Iogurte com sabor",
                       filtragem=2)
endTime <- Sys.time()

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.1.1")
writeData(wb,"3.1.1",tabela311)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.1.2")
writeData(wb,"3.1.2",tabela312)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.1.3")
writeData(wb,"3.1.3",tabela313)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.2.x ##

table(pense$BEBIDAS) #quantidade de bebidas ultraprocessadas

startTime <- Sys.time()
tabelas_32x <- modelo5(var=pense$BEBIDAS,
                       var_string="BEBIDAS",
                       var_titulo="Quantidade de bebidas ultraprocessadas consumidas",
                       valor=c("Nenhuma bebida", "1 bebida", "2 bebidas ou mais"),
                       filtragem=2:4)
endTime <- Sys.time()

tabela321 <- tabelas_32x$tabela1
tabela322 <- tabelas_32x$tabela2
tabela323 <- tabelas_32x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.2.1")
writeData(wb,"3.2.1",tabela321)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.2.2")
writeData(wb,"3.2.2",tabela322)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.2.3")
writeData(wb,"3.2.3",tabela323)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.3.x ##

table(pense$B02033) #biscoito salgado
table(pense$B02034) #biscoito doce
table(pense$B02035) #outra sobremesa industrializada

startTime <- Sys.time()
tabelas_33x <- modelo5(var=pense$B02033,
                       var_string="B02033",
                       var_titulo="Doce ultraprocessado consumido",
                       valor="Biscoito salgado",
                       filtragem=2)
endTime <- Sys.time()

tabela331 <- tabelas_33x$tabela1
tabela332 <- tabelas_33x$tabela2
tabela333 <- tabelas_33x$tabela3

startTime <- Sys.time()
tabelas_33x <- modelo5(var=pense$B02034,
                       var_string="B02034",
                       var_titulo="Doce ultraprocessado consumido",
                       valor="Biscoito doce",
                       filtragem=2)
endTime <- Sys.time()

tabela331 <- rbind(tabela331, tabelas_33x$tabela1)
tabela332 <- rbind(tabela332, tabelas_33x$tabela2)
tabela333 <- rbind(tabela333, tabelas_33x$tabela3)

startTime <- Sys.time()
tabelas_33x <- modelo5(var=pense$B02035,
                       var_string="B02035",
                       var_titulo="Doce ultraprocessado consumido",
                       valor="Outra sobremesa industrializada",
                       filtragem=2)
endTime <- Sys.time()

tabela331 <- rbind(tabela331, tabelas_33x$tabela1)
tabela332 <- rbind(tabela332, tabelas_33x$tabela2)
tabela333 <- rbind(tabela333, tabelas_33x$tabela3)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.3.1")
writeData(wb,"3.3.1",tabela331)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.3.2")
writeData(wb,"3.3.2",tabela332)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.3.3")
writeData(wb,"3.3.3",tabela333)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.4.x ##

table(pense$COMIDAS_IND) #quantidade de doces ultraprocessadas

startTime <- Sys.time()
tabelas_34x <- modelo5(var=pense$COMIDAS_IND,
                       var_string="COMIDAS_IND",
                       var_titulo="Quantidade de doces ultraprocessadas consumidas",
                       valor=c("Nenhum alimento", "1 alimento", "2 alimentos ou mais"),
                       filtragem=2:4)
endTime <- Sys.time()

tabela341 <- tabelas_34x$tabela1
tabela342 <- tabelas_34x$tabela2
tabela343 <- tabelas_34x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.4.1")
writeData(wb,"3.4.1",tabela341)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.4.2")
writeData(wb,"3.4.2",tabela342)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.4.3")
writeData(wb,"3.4.3",tabela343)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.5.x ##

table(pense$B02036) #produto cárneo
table(pense$B02037) #pão
table(pense$B02038) #margarina
table(pense$B02039) #molho industrializado
table(pense$B02040) #outra refeição pronta

startTime <- Sys.time()
tabelas_35x <- modelo5(var=pense$B02036,
                       var_string="B02036",
                       var_titulo="Salgado ultraprocessado consumido",
                       valor="Produto cárneo",
                       filtragem=2)
endTime <- Sys.time()

tabela351 <- tabelas_35x$tabela1
tabela352 <- tabelas_35x$tabela2
tabela353 <- tabelas_35x$tabela3

startTime <- Sys.time()
tabelas_35x <- modelo5(var=pense$B02037,
                       var_string="B02037",
                       var_titulo="Salgado ultraprocessado consumido",
                       valor="Pão",
                       filtragem=2)
endTime <- Sys.time()

tabela351 <- rbind(tabela351, tabelas_35x$tabela1)
tabela352 <- rbind(tabela352, tabelas_35x$tabela2)
tabela353 <- rbind(tabela353, tabelas_35x$tabela3)

startTime <- Sys.time()
tabelas_35x <- modelo5(var=pense$B02038,
                       var_string="B02038",
                       var_titulo="Salgado ultraprocessado consumido",
                       valor="Margarina",
                       filtragem=2)
endTime <- Sys.time()

tabela351 <- rbind(tabela351, tabelas_35x$tabela1)
tabela352 <- rbind(tabela352, tabelas_35x$tabela2)
tabela353 <- rbind(tabela353, tabelas_35x$tabela3)

startTime <- Sys.time()
tabelas_35x <- modelo5(var=pense$B02039,
                       var_string="B02039",
                       var_titulo="Salgado ultraprocessado consumido",
                       valor="Molho industrializado",
                       filtragem=2)
endTime <- Sys.time()

tabela351 <- rbind(tabela351, tabelas_35x$tabela1)
tabela352 <- rbind(tabela352, tabelas_35x$tabela2)
tabela353 <- rbind(tabela353, tabelas_35x$tabela3)

startTime <- Sys.time()
tabelas_35x <- modelo5(var=pense$B02040,
                       var_string="B02040",
                       var_titulo="Salgado ultraprocessado consumido",
                       valor="Outra refeição pronta",
                       filtragem=2)
endTime <- Sys.time()

tabela351 <- rbind(tabela351, tabelas_35x$tabela1)
tabela352 <- rbind(tabela352, tabelas_35x$tabela2)
tabela353 <- rbind(tabela353, tabelas_35x$tabela3)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.5.1")
writeData(wb,"3.5.1",tabela351)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.5.2")
writeData(wb,"3.5.2",tabela352)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.5.3")
writeData(wb,"3.5.3",tabela353)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.6.x ##

table(pense$SALGADOS_IND) #quantidade de salgados ultraprocessadas

startTime <- Sys.time()
tabelas_36x <- modelo5(var=pense$SALGADOS_IND,
                       var_string="SALGADOS_IND",
                       var_titulo="Quantidade de salgados ultraprocessadas consumidas",
                       valor=c("Nenhum alimento", "1 alimento", "2 alimentos ou mais"),
                       filtragem=2:4)
endTime <- Sys.time()

tabela361 <- tabelas_36x$tabela1
tabela362 <- tabelas_36x$tabela2
tabela363 <- tabelas_36x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.6.1")
writeData(wb,"3.6.1",tabela361)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.6.2")
writeData(wb,"3.6.2",tabela362)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.6.3")
writeData(wb,"3.6.3",tabela363)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



#criar variavel de consumo de ultraprocessados (sim ou nao)
#baseada em comidas_ind e salgados_ind (incluir bebidas?)
#rodar as 3 tabelas para essa variável filtrando para nao (3.7.x)
#rodar filtrando para sim (3.8.x)

## TABELA 3.7.x ##

table(pense$CONSUMIU) #consumo de alimentos ultraprocessados (não)

startTime <- Sys.time()
tabelas_37x <- modelo5(var=pense$CONSUMIU,
                       var_string="CONSUMIU",
                       var_titulo="Consumiu alimentos ultraprocessados",
                       valor="Não",
                       filtragem=3)
endTime <- Sys.time()

tabela371 <- tabelas_37x$tabela1
tabela372 <- tabelas_37x$tabela2
tabela373 <- tabelas_37x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.7.1")
writeData(wb,"3.7.1",tabela371)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.7.2")
writeData(wb,"3.7.2",tabela372)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.7.3")
writeData(wb,"3.7.3",tabela373)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.8.x ##

table(pense$CONSUMIU) #consumo de alimentos ultraprocessados (sim)

startTime <- Sys.time()
tabelas_38x <- modelo5(var=pense$CONSUMIU,
                       var_string="CONSUMIU",
                       var_titulo="Consumiu alimentos ultraprocessados",
                       valor="Sim",
                       filtragem=2)
endTime <- Sys.time()

tabela381 <- tabelas_38x$tabela1
tabela382 <- tabelas_38x$tabela2
tabela383 <- tabelas_38x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.8.1")
writeData(wb,"3.8.1",tabela381)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.8.2")
writeData(wb,"3.8.2",tabela382)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.8.3")
writeData(wb,"3.8.3",tabela383)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.9.x ##

table(pense$FEIJAO) #freq do consumo de feijao

tabela_391 <- modelo1(DESENHO=subset(desenho_validos,
                                     (pense$FEIJAO!="Abandono")),
              VAR_COL="FEIJAO",
              NOME_VAR_COL="Frequência do consumo de feijão",
              VETOR_COL=c("Nenhum dia",
                          "1 dia", "2 dias", "3 dias",
                          "4 dias", "5 dias ou mais"),
              FILTRO=2:7,
              fun_estima="estima_pct",
              fun_arruma="tab_3vars")

tabela_392 <- modelo2(DESENHO=subset(desenho_validos,
                       (pense$FEIJAO!="Abandono")),
                      VAR_COL="FEIJAO",
                      NOME_VAR_COL="Frequência do consumo de feijão",
                      VETOR_COL=c("Nenhum dia",
                    "1 dia", "2 dias", "3 dias",
                    "4 dias", "5 dias ou mais"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_393 <- modelo3(DESENHO=subset(desenho_validos,
                                    (pense$FEIJAO!="Abandono")),
                      VAR_COL="FEIJAO",
                      NOME_VAR_COL="Frequência do consumo de feijão",
                      VETOR_COL=c("Nenhum dia",
                                  "1 dia", "2 dias", "3 dias",
                                  "4 dias", "5 dias ou mais"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.9.1")
writeData(wb,"3.9.1",tabela_391)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.9.2")
writeData(wb,"3.9.2",tabela_392)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.9.3")
writeData(wb,"3.9.3",tabela_393)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.10.x ##

table(pense$FEIJAO) #consumo de feijao (>=5 dias)

startTime <- Sys.time()
tabelas_310x <- modelo5(var=pense$FEIJAO,
                       var_string="FEIJAO",
                       var_titulo="Consumiu feijão em 5 dias ou mais",
                       valor="Sim",
                       filtragem=7)
endTime <- Sys.time()

tabela3101 <- tabelas_310x$tabela1
tabela3102 <- tabelas_310x$tabela2
tabela3103 <- tabelas_310x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.10.1")
writeData(wb,"3.10.1",tabela3101)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.10.2")
writeData(wb,"3.10.2",tabela3102)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.10.3")
writeData(wb,"3.10.3",tabela3103)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)














## TABELA 3.11.x ##

table(pense$LEGUMES) #freq do consumo de legumes/verduras

tabela_3111 <- modelo1(DESENHO=subset(desenho_validos,
                                     (pense$LEGUMES!="Abandono")),
                      VAR_COL="LEGUMES",
                      NOME_VAR_COL="Frequência do consumo de legumes/verduras",
                      VETOR_COL=c("Nenhum dia",
                                  "1 dia", "2 dias", "3 dias",
                                  "4 dias", "5 dias ou mais"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_3112 <- modelo2(DESENHO=subset(desenho_validos,
                                     (pense$LEGUMES!="Abandono")),
                      VAR_COL="LEGUMES",
                      NOME_VAR_COL="Frequência do consumo de legumes/verduras",
                      VETOR_COL=c("Nenhum dia",
                                  "1 dia", "2 dias", "3 dias",
                                  "4 dias", "5 dias ou mais"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_3113 <- modelo3(DESENHO=subset(desenho_validos,
                                     (pense$LEGUMES!="Abandono")),
                      VAR_COL="LEGUMES",
                      NOME_VAR_COL="Frequência do consumo de legumes/verduras",
                      VETOR_COL=c("Nenhum dia",
                                  "1 dia", "2 dias", "3 dias",
                                  "4 dias", "5 dias ou mais"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.11.1")
writeData(wb,"3.11.1",tabela_3111)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.11.2")
writeData(wb,"3.11.2",tabela_3112)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.11.3")
writeData(wb,"3.11.3",tabela_3113)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.12.x ##

table(pense$LEGUMES) #consumo de legumes/verduras (>=5 dias)

startTime <- Sys.time()
tabelas_312x <- modelo5(var=pense$LEGUMES,
                        var_string="LEGUMES",
                        var_titulo="Consumiu legumes/verduras em 5 dias ou mais",
                        valor="Sim",
                        filtragem=7)
endTime <- Sys.time()

tabela3121 <- tabelas_312x$tabela1
tabela3122 <- tabelas_312x$tabela2
tabela3123 <- tabelas_312x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.12.1")
writeData(wb,"3.12.1",tabela3121)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.12.2")
writeData(wb,"3.12.2",tabela3122)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.12.3")
writeData(wb,"3.12.3",tabela3123)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



