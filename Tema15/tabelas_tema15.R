## TABELA 15.1.x ##

table(pense$REGRA_ALIMENTO) #A escola segue legislacao/politica/regra sobre alimentos comercializados em suas dependencias

tabelas_15_1x <- modelo7(var=pense$REGRA_ALIMENTO,
                         var_string="REGRA_ALIMENTO",
                         var_titulo="A escola segue legislação/política/regra sobre alimentos comercializados em suas dependências",
                         valor="Sim",
                         filtragem=1)

tabela_15_11 <- tabelas_15_1x$tabela1
tabela_15_12 <- tabelas_15_1x$tabela2
tabela_15_13 <- tabelas_15_1x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.1.1")
writeData(wb,"15.1.1",tabela_15_11)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.1.2")
writeData(wb,"15.1.2",tabela_15_12)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.1.3")
writeData(wb,"15.1.3",tabela_15_13)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



#15.2.x ao 15.6.x falta info


## TABELA 15.7.x ##

table(pense$E01P11A) #A escola tem cantina

tabelas_15_7x <- modelo7(var=pense$E01P11A,
                         var_string="E01P11A",
                         var_titulo="A escola tem cantina",
                         valor="Sim",
                         filtragem=1)

tabela_15_71 <- tabelas_15_7x$tabela1
tabela_15_72 <- tabelas_15_7x$tabela2
tabela_15_73 <- tabelas_15_7x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.7.1")
writeData(wb,"15.7.1",tabela_15_71)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.7.2")
writeData(wb,"15.7.2",tabela_15_72)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.7.3")
writeData(wb,"15.7.3",tabela_15_73)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.8.x ##

#RODAR E CONFERIR

table(pense$E01P12B06) #salgados assados - cantina

tabelas_15_8x_pt1 <- modelo7(var=pense$E01P12B06,
                         var_string="E01P12B06",
                         var_titulo="Alimento/bebida vendidos na cantina",
                         valor="Salgados assados",
                         filtragem=3)

tabela_15_81_pt1 <- tabelas_15_8x_pt1$tabela1
tabela_15_82_pt1 <- tabelas_15_8x_pt1$tabela2
tabela_15_83_pt1 <- tabelas_15_8x_pt1$tabela3

table(pense$E01P12B03) #suco natural - cantina

tabelas_15_8x_pt2 <- modelo7(var=pense$E01P12B03,
                             var_string="E01P12B03",
                             var_titulo="Alimento/bebida vendidos na cantina",
                             valor="Suco natural de frutas",
                             filtragem=3)

tabela_15_81_pt2 <- tabelas_15_8x_pt2$tabela1
tabela_15_82_pt2 <- tabelas_15_8x_pt2$tabela2
tabela_15_83_pt2 <- tabelas_15_8x_pt2$tabela3

table(pense$E01P12B01) #refrigerante - cantina

tabelas_15_8x_pt3 <- modelo7(var=pense$E01P12B01,
                             var_string="E01P12B01",
                             var_titulo="Alimento/bebida vendidos na cantina",
                             valor="Refrigerante",
                             filtragem=3)

tabela_15_81_pt3 <- tabelas_15_8x_pt3$tabela1
tabela_15_82_pt3 <- tabelas_15_8x_pt3$tabela2
tabela_15_83_pt3 <- tabelas_15_8x_pt3$tabela3

tabela_15_81 <- rbind(tabela_15_81_pt1, tabela_15_81_pt2, tabela_15_81_pt3)
tabela_15_82 <- rbind(tabela_15_82_pt1, tabela_15_82_pt2, tabela_15_82_pt3)
tabela_15_83 <- rbind(tabela_15_83_pt1, tabela_15_83_pt2, tabela_15_83_pt3)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.8.1")
writeData(wb,"15.8.1",tabela_15_81)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.8.2")
writeData(wb,"15.8.2",tabela_15_82)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.8.3")
writeData(wb,"15.8.3",tabela_18_73)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)