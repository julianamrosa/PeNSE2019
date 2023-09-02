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
                       filtragem=1:3)
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
                       filtragem=1:3)
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
