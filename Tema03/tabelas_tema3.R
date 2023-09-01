## TABELA 3.1.x ##

table(pense$B02028) #refrigerante
table(pense$B02029) #suco de caixa/lata
table(pense$B02030) #refresco em pó
table(pense$B02031) #bebida achocolatada
table(pense$B02032) #iogurte

tabelas_31x <- modelo5(var=pense$B02028,
                       var_string="B02028",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Refrigerante",
                       filtragem=2)

tabela311 <- tabelas_31x$tabela1
tabela312 <- tabelas_31x$tabela2
tabela313 <- tabelas_31x$tabela3

tabelas_31x <- modelo5(var=pense$B02029,
                       var_string="B02029",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Suco em caixa/lata",
                       filtragem=2)

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

tabelas_31x <- modelo5(var=pense$B02030,
                       var_string="B02030",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Refresco em pó",
                       filtragem=2)

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

tabelas_31x <- modelo5(var=pense$B02031,
                       var_string="B02031",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Bebida achocolatada",
                       filtragem=2)

tabela311 <- rbind(tabela311, tabelas_31x$tabela1)
tabela312 <- rbind(tabela312, tabelas_31x$tabela2)
tabela313 <- rbind(tabela313, tabelas_31x$tabela3)

tabelas_31x <- modelo5(var=pense$B02032,
                       var_string="B02032",
                       var_titulo="Bebida ultraprocessada consumida",
                       valor="Iogurte com sabor",
                       filtragem=2)

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
saveWorkbook(wb,"Tema02/Tema02.xlsx",overwrite = TRUE)