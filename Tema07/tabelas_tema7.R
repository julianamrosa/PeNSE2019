## TABELA 7.1.x ##

table(pense$B06001) #já experimentou alguma droga ilícita

tabelas_71x <- modelo5(var=pense$B06001,
                       var_string="B06001",
                       var_titulo="Já experimentou alguma droga ilícita?",
                       valor="Sim",
                       filtragem=3)

tabela_711 <- tabelas_71x$tabela1
tabela_712 <- tabelas_71x$tabela2
tabela_713 <- tabelas_71x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.1.1")
writeData(wb,"7.1.1",tabela_711)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.1.2")
writeData(wb,"7.1.2",tabela_712)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.1.3")
writeData(wb,"7.1.3",tabela_713)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)



## TABELA 7.2.x ##

table(pense$DROGAS_IDADE) #idade quando usou drogas por primeira vez

tabelas_72x <- modelo6(var=pense$DROGAS_IDADE,
                       var_string="DROGAS_IDADE",
                       var_titulo="Idade que tinha quando usou alguma droga por primeira vez",
                       valor="Menos de 13 anos",
                       filtragem=3)

tabela_721 <- tabelas_72x$tabela1
tabela_722 <- tabelas_72x$tabela2
tabela_723 <- tabelas_72x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.2.1")
writeData(wb,"7.2.1",tabela_721)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.2.2")
writeData(wb,"7.2.2",tabela_722)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.2.3")
writeData(wb,"7.2.3",tabela_723)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)



## TABELA 7.3.x ##

table(pense$DROGAS_30DIAS) #usou drogas nos últimos 30 dias?

tabelas_73x <- modelo6(var=pense$DROGAS_30DIAS,
                       var_string="DROGAS_30DIAS",
                       var_titulo="Usou drogas nos últimos 30 dias?",
                       valor="Sim",
                       filtragem=4)

tabela_731 <- tabelas_73x$tabela1
tabela_732 <- tabelas_73x$tabela2
tabela_733 <- tabelas_73x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.3.1")
writeData(wb,"7.3.1",tabela_731)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.3.2")
writeData(wb,"7.3.2",tabela_732)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.3.3")
writeData(wb,"7.3.3",tabela_733)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)



## TABELA 7.4.x ##

table(pense$MACONHA) #usou maconha nos últimos 30 dias?

tabelas_74x <- modelo6(var=pense$MACONHA,
                       var_string="MACONHA",
                       var_titulo="Usou maconha nos últimos 30 dias?",
                       valor="Sim",
                       filtragem=4)

tabela_741 <- tabelas_74x$tabela1
tabela_742 <- tabelas_74x$tabela2
tabela_743 <- tabelas_74x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.4.1")
writeData(wb,"7.4.1",tabela_741)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.4.2")
writeData(wb,"7.4.2",tabela_742)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.4.3")
writeData(wb,"7.4.3",tabela_743)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)



## TABELA 7.5.x ##

table(pense$CRACK) #usou crack nos últimos 30 dias?

tabelas_75x <- modelo6(var=pense$CRACK,
                       var_string="CRACK",
                       var_titulo="Usou crack nos últimos 30 dias?",
                       valor="Sim",
                       filtragem=4)

tabela_751 <- tabelas_75x$tabela1
tabela_752 <- tabelas_75x$tabela2
tabela_753 <- tabelas_75x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.5.1")
writeData(wb,"7.5.1",tabela_751)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.5.2")
writeData(wb,"7.5.2",tabela_752)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.5.3")
writeData(wb,"7.5.3",tabela_753)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)



## TABELA 7.6.x ##

table(pense$B06006A) #amigos usaram drogas na sua presença

tabelas_76x <- modelo6(var=pense$B06006A,
                       var_string="B06006A",
                       var_titulo="Algum amigo usou drogas na sua frente?",
                       valor="Sim",
                       filtragem=3)

tabela_761 <- tabelas_76x$tabela1
tabela_762 <- tabelas_76x$tabela2
tabela_763 <- tabelas_76x$tabela3

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.6.1")
writeData(wb,"7.6.1",tabela_761)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.6.2")
writeData(wb,"7.6.2",tabela_762)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema07/Tema07.xlsx")
addWorksheet(wb,"7.6.3")
writeData(wb,"7.6.3",tabela_763)
saveWorkbook(wb,"Tema07/Tema07.xlsx",overwrite = TRUE)
