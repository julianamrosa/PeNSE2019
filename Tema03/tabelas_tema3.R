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



## TABELA 3.13.x ##

table(pense$GULOSEIMAS) #freq do consumo de guloseimas doces

tabela_3131 <- modelo1(DESENHO=subset(desenho_validos,
                                      (pense$GULOSEIMAS!="Abandono")),
                       VAR_COL="GULOSEIMAS",
                       NOME_VAR_COL="Frequência do consumo de guloseimas doces",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_3vars")

tabela_3132 <- modelo2(DESENHO=subset(desenho_validos,
                                      (pense$GULOSEIMAS!="Abandono")),
                       VAR_COL="GULOSEIMAS",
                       NOME_VAR_COL="Frequência do consumo de guloseimas doces",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

tabela_3133 <- modelo3(DESENHO=subset(desenho_validos,
                                      (pense$GULOSEIMAS!="Abandono")),
                       VAR_COL="GULOSEIMAS",
                       NOME_VAR_COL="Frequência do consumo de guloseimas doces",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.13.1")
writeData(wb,"3.13.1",tabela_3131)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.13.2")
writeData(wb,"3.13.2",tabela_3132)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.13.3")
writeData(wb,"3.13.3",tabela_3133)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.14.x ##

table(pense$GULOSEIMAS) #consumo de guloseimas doces (>=5 dias)

startTime <- Sys.time()
tabelas_314x <- modelo5(var=pense$GULOSEIMAS,
                        var_string="GULOSEIMAS",
                        var_titulo="Consumiu guloseimas doces em 5 dias ou mais",
                        valor="Sim",
                        filtragem=7)
endTime <- Sys.time()

tabela3141 <- tabelas_314x$tabela1
tabela3142 <- tabelas_314x$tabela2
tabela3143 <- tabelas_314x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.14.1")
writeData(wb,"3.14.1",tabela3141)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.14.2")
writeData(wb,"3.14.2",tabela3142)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.14.3")
writeData(wb,"3.14.3",tabela3143)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.15.x ##

table(pense$FRUTAS) #freq do consumo de frutas

tabela_3151 <- modelo1(DESENHO=subset(desenho_validos,
                                      (pense$FRUTAS!="Abandono")),
                       VAR_COL="FRUTAS",
                       NOME_VAR_COL="Frequência do consumo de frutas",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_3vars")

tabela_3152 <- modelo2(DESENHO=subset(desenho_validos,
                                      (pense$FRUTAS!="Abandono")),
                       VAR_COL="FRUTAS",
                       NOME_VAR_COL="Frequência do consumo de frutas",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

tabela_3153 <- modelo3(DESENHO=subset(desenho_validos,
                                      (pense$FRUTAS!="Abandono")),
                       VAR_COL="FRUTAS",
                       NOME_VAR_COL="Frequência do consumo de frutas",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.15.1")
writeData(wb,"3.15.1",tabela_3151)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.15.2")
writeData(wb,"3.15.2",tabela_3152)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.15.3")
writeData(wb,"3.15.3",tabela_3153)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.16.x ##

table(pense$FRUTAS) #consumo de frutas (>=5 dias)

startTime <- Sys.time()
tabelas_316x <- modelo5(var=pense$FRUTAS,
                        var_string="FRUTAS",
                        var_titulo="Consumiu frutas em 5 dias ou mais",
                        valor="Sim",
                        filtragem=7)
endTime <- Sys.time()

tabela3161 <- tabelas_316x$tabela1
tabela3162 <- tabelas_316x$tabela2
tabela3163 <- tabelas_316x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.16.1")
writeData(wb,"3.16.1",tabela3161)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.16.2")
writeData(wb,"3.16.2",tabela3162)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.16.3")
writeData(wb,"3.16.3",tabela3163)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.17.x ##

table(pense$REFRI) #freq do consumo de refrigerante

tabela_3171 <- modelo1(DESENHO=subset(desenho_validos,
                                      (pense$REFRI!="Abandono")),
                       VAR_COL="REFRI",
                       NOME_VAR_COL="Frequência do consumo de refrigerante",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_3vars")

tabela_3172 <- modelo2(DESENHO=subset(desenho_validos,
                                      (pense$REFRI!="Abandono")),
                       VAR_COL="REFRI",
                       NOME_VAR_COL="Frequência do consumo de refrigerante",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

tabela_3173 <- modelo3(DESENHO=subset(desenho_validos,
                                      (pense$REFRI!="Abandono")),
                       VAR_COL="REFRI",
                       NOME_VAR_COL="Frequência do consumo de refrigerante",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.17.1")
writeData(wb,"3.17.1",tabela_3171)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.17.2")
writeData(wb,"3.17.2",tabela_3172)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.17.3")
writeData(wb,"3.17.3",tabela_3173)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.18.x ##

table(pense$REFRI) #consumo de refrigerante (>=5 dias)

startTime <- Sys.time()
tabelas_318x <- modelo5(var=pense$REFRI,
                        var_string="REFRI",
                        var_titulo="Consumiu refrigerante em 5 dias ou mais",
                        valor="Sim",
                        filtragem=7)
endTime <- Sys.time()

tabela3181 <- tabelas_318x$tabela1
tabela3182 <- tabelas_318x$tabela2
tabela3183 <- tabelas_318x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.18.1")
writeData(wb,"3.18.1",tabela3181)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.18.2")
writeData(wb,"3.18.2",tabela3182)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.18.3")
writeData(wb,"3.18.3",tabela3183)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.19.x ##

table(pense$FASTFOOD) #freq do consumo de fast food

tabela_3191 <- modelo1(DESENHO=subset(desenho_validos,
                                      (pense$FASTFOOD!="Abandono")),
                       VAR_COL="FASTFOOD",
                       NOME_VAR_COL="Frequência do consumo de fast food",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_3vars")

tabela_3192 <- modelo2(DESENHO=subset(desenho_validos,
                                      (pense$FASTFOOD!="Abandono")),
                       VAR_COL="FASTFOOD",
                       NOME_VAR_COL="Frequência do consumo de fast food",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

tabela_3193 <- modelo3(DESENHO=subset(desenho_validos,
                                      (pense$FASTFOOD!="Abandono")),
                       VAR_COL="FASTFOOD",
                       NOME_VAR_COL="Frequência do consumo de fast food",
                       VETOR_COL=c("Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais"),
                       FILTRO=2:7,
                       fun_estima="estima_pct",
                       fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.19.1")
writeData(wb,"3.19.1",tabela_3191)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.19.2")
writeData(wb,"3.19.2",tabela_3192)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.19.3")
writeData(wb,"3.19.3",tabela_3193)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.20.x ##
#essa tabela está com erro na planilha deles --> diz >=3 dias, mas é >=5 dias
table(pense$FASTFOOD) #consumo de refrigerante (>=5 dias)

startTime <- Sys.time()
tabelas_320x <- modelo5(var=pense$FASTFOOD,
                        var_string="FASTFOOD",
                        var_titulo="Consumiu fast food em 5 dias ou mais",
                        valor="Sim",
                        filtragem=7)
endTime <- Sys.time()

tabela3201 <- tabelas_320x$tabela1
tabela3202 <- tabelas_320x$tabela2
tabela3203 <- tabelas_320x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.20.1")
writeData(wb,"3.20.1",tabela3201)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.20.2")
writeData(wb,"3.20.2",tabela3202)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.20.3")
writeData(wb,"3.20.3",tabela3203)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)




## TABELA 3.21.x ##

table(pense$CAFE) #toma café da manhã (>=5 dias)

startTime <- Sys.time()
tabelas_321x <- modelo5(var=pense$CAFE,
                        var_string="CAFE",
                        var_titulo="Toma café da manhã em 5 dias ou mais na semana",
                        valor="Sim",
                        filtragem=3)
endTime <- Sys.time()

tabela3211 <- tabelas_321x$tabela1
tabela3212 <- tabelas_321x$tabela2
tabela3213 <- tabelas_321x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.21.1")
writeData(wb,"3.21.1",tabela3211)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.21.2")
writeData(wb,"3.21.2",tabela3212)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.21.3")
writeData(wb,"3.21.3",tabela3213)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.22.x ##

table(pense$JANTAR) #janta com os pais (>=5 dias)

startTime <- Sys.time()
tabelas_322x <- modelo5(var=pense$JANTAR,
                        var_string="JANTAR",
                        var_titulo="Janta com os pais em 5 dias ou mais na semana",
                        valor="Sim",
                        filtragem=3)
endTime <- Sys.time()

tabela3221 <- tabelas_322x$tabela1
tabela3222 <- tabelas_322x$tabela2
tabela3223 <- tabelas_322x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.22.1")
writeData(wb,"3.22.1",tabela3221)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.22.2")
writeData(wb,"3.22.2",tabela3222)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.22.3")
writeData(wb,"3.22.3",tabela3223)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.23.x ##

table(pense$TV) #faz refeições concomitante a outras atividades (>=5 dias)

startTime <- Sys.time()
tabelas_323x <- modelo5(var=pense$TV,
                        var_string="TV",
                        var_titulo="Costuma fazer refeições concomitante a outras atividades",
                        valor="Sim",
                        filtragem=2)
endTime <- Sys.time()

tabela3231 <- tabelas_323x$tabela1
tabela3232 <- tabelas_323x$tabela2
tabela3233 <- tabelas_323x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.23.1")
writeData(wb,"3.23.1",tabela3231)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.23.2")
writeData(wb,"3.23.2",tabela3232)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.23.3")
writeData(wb,"3.23.3",tabela3233)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.24.x ##

table(pense$B02021A) #a escola oferece comida?

startTime <- Sys.time()
tabelas_324x <- modelo5(var=pense$B02021A,
                        var_string="B02021A",
                        var_titulo="A escola oferece comida aos alunos?",
                        valor="Sim",
                        filtragem=2)
endTime <- Sys.time()

tabela3241 <- tabelas_324x$tabela1
tabela3242 <- tabelas_324x$tabela2
tabela3243 <- tabelas_324x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.24.1")
writeData(wb,"3.24.1",tabela3241)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.24.2")
writeData(wb,"3.24.2",tabela3242)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.24.3")
writeData(wb,"3.24.3",tabela3243)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.25.x ##

table(pense$MERENDA) #come a comida oferecida pela escola

startTime <- Sys.time()
tabelas_325x <- modelo5(var=pense$MERENDA,
                        var_string="MERENDA",
                        var_titulo="Você come a comida oferecida pela escola?",
                        valor="Sim",
                        filtragem=2)
endTime <- Sys.time()

tabela3251 <- tabelas_325x$tabela1
tabela3252 <- tabelas_325x$tabela2
tabela3253 <- tabelas_325x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.25.1")
writeData(wb,"3.25.1",tabela3251)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.25.2")
writeData(wb,"3.25.2",tabela3252)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.25.3")
writeData(wb,"3.25.3",tabela3253)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.26.x ##

table(pense$MERENDA2) #freq com que os alunos comem a comida oferecida pela escola

tabela_3261_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Pública")

tabela_3261_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_4vars",
                          VAR_EXTRA="Dependência Administrativa",
                          VALOR_EXTRA="Privada")

tabela_3261 <- rbind(tabela_3261_pt1, tabela_3261_pt2)

tabela_3262_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_3262_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_3262 <- rbind(tabela_3262_pt1, tabela_3262_pt2)

tabela_3263_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==1)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Pública")

tabela_3263_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$MERENDA2!="Abandono" & pense$DEP_ADMIN==2)),
                          VAR_COL="MERENDA2",
                          NOME_VAR_COL="Frequência com que os alunos comem a comida oferecida",
                          VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                          FILTRO=2:4,
                          fun_estima="estima_pct",
                          fun_arruma="tab_3vars",
                          NOM_VAR_LIN="Dependência Administrativa",
                          VETOR_LIN="Privada")

tabela_3263 <- rbind(tabela_3263_pt1, tabela_3263_pt2)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.26.1")
writeData(wb,"3.26.1",tabela_3261)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.26.2")
writeData(wb,"3.26.2",tabela_3262)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.26.3")
writeData(wb,"3.26.3",tabela_3263)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)



## TABELA 3.27.x ##

table(pense$CANTINA) #compra comida na cantina da escola

startTime <- Sys.time()
tabelas_327x <- modelo5(var=pense$CANTINA,
                        var_string="CANTINA",
                        var_titulo="Você compra comida na cantina da escola?",
                        valor="Sim",
                        filtragem=2)
endTime <- Sys.time()

tabela3271 <- tabelas_327x$tabela1
tabela3272 <- tabelas_327x$tabela2
tabela3273 <- tabelas_327x$tabela3

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.27.1")
writeData(wb,"3.27.1",tabela3271)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.27.2")
writeData(wb,"3.27.2",tabela3272)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.27.3")
writeData(wb,"3.27.3",tabela3273)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)




## TABELA 3.28.x ##
#não bateu!!
table(pense$CANTINA2) #freq com que os alunos compram comida na cantina

tabela_3281_pt1 <- modelo1(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono"
                                                            & pense$CANTINA2!="Não tem cantina"
                                                            & pense$DEP_ADMIN==1)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_4vars",
                           VAR_EXTRA="Dependência Administrativa",
                           VALOR_EXTRA="Pública")

tabela_3281_pt2 <- modelo1(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono" & pense$DEP_ADMIN==2)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_4vars",
                           VAR_EXTRA="Dependência Administrativa",
                           VALOR_EXTRA="Privada")

tabela_3281 <- rbind(tabela_3281_pt1, tabela_3281_pt2)

tabela_3282_pt1 <- modelo2(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono" & pense$DEP_ADMIN==1)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars",
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública")

tabela_3282_pt2 <- modelo2(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono" & pense$DEP_ADMIN==2)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars",
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada")

tabela_3282 <- rbind(tabela_3282_pt1, tabela_3282_pt2)

tabela_3283_pt1 <- modelo3(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono" & pense$DEP_ADMIN==1)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars",
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Pública")

tabela_3283_pt2 <- modelo3(DESENHO=subset(desenho_validos, (pense$CANTINA2!="Abandono" & pense$DEP_ADMIN==2)),
                           VAR_COL="CANTINA2",
                           NOME_VAR_COL="Frequência com que os alunos compram comida na cantina",
                           VETOR_COL=c("Não ou raramente", "1 ou 2 dias", "3 dias ou mais"),
                           FILTRO=2:4,
                           fun_estima="estima_pct",
                           fun_arruma="tab_3vars",
                           NOM_VAR_LIN="Dependência Administrativa",
                           VETOR_LIN="Privada")

tabela_3283 <- rbind(tabela_3283_pt1, tabela_3283_pt2)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.28.1")
writeData(wb,"3.28.1",tabela_3281)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.28.2")
writeData(wb,"3.28.2",tabela_3282)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema03/Tema03.xlsx")
addWorksheet(wb,"3.28.3")
writeData(wb,"3.28.3",tabela_3283)
saveWorkbook(wb,"Tema03/Tema03.xlsx",overwrite = TRUE)