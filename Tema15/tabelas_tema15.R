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