## TABELA 10.1.x ##

table(pense$B10004A) #freq lava as maos
table(pense$LAVA_MAO) #freq lava as maos -> nunca e raramente agregados

tabelas_10_1x <- modelo5(var=pense$LAVA_MAO,
                       var_string="LAVA_MAO",
                       var_titulo="Frequência com que lava as mãos antes de comer",
                       valor="Nunca ou raramente",
                       filtragem=2)

tabela_10_11 <- tabelas_10_1x$tabela1
tabela_10_12 <- tabelas_10_1x$tabela2
tabela_10_13 <- tabelas_10_1x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.1.1")
writeData(wb,"10.1.1",tabela_10_11)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.1.2")
writeData(wb,"10.1.2",tabela_10_12)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.1.3")
writeData(wb,"10.1.3",tabela_10_13)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



## TABELA 10.2.x ##

table(pense$B10005A) #freq lava as maos
table(pense$LAVA_MAO2) #freq lava as maos -> nunca e raramente agregados

tabelas_10_2x <- modelo5(var=pense$LAVA_MAO2,
                         var_string="LAVA_MAO2",
                         var_titulo="Frequência com que lava as mãos após usar o banheiro",
                         valor="Nunca ou raramente",
                         filtragem=2)

tabela_10_21 <- tabelas_10_2x$tabela1
tabela_10_22 <- tabelas_10_2x$tabela2
tabela_10_23 <- tabelas_10_2x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.2.1")
writeData(wb,"10.2.1",tabela_10_21)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.2.2")
writeData(wb,"10.2.2",tabela_10_22)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.2.3")
writeData(wb,"10.2.3",tabela_10_23)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



## TABELA 10.3.x ##

table(pense$B10006A) #freq usa sabonete
table(pense$SABONETE) #freq usa sabonete -> nunca e raramente agregados

tabelas_10_3x <- modelo5(var=pense$SABONETE,
                         var_string="SABONETE",
                         var_titulo="Frequência com que usa sabonete quando lava as mãos",
                         valor="Nunca ou raramente",
                         filtragem=2)

tabela_10_31 <- tabelas_10_3x$tabela1
tabela_10_32 <- tabelas_10_3x$tabela2
tabela_10_33 <- tabelas_10_3x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.3.1")
writeData(wb,"10.3.1",tabela_10_31)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.3.2")
writeData(wb,"10.3.2",tabela_10_32)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.3.3")
writeData(wb,"10.3.3",tabela_10_33)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



## TABELA 10.4.x ##

table(pense$B10001B) #freq diária que escova os dentes
table(pense$ESCOVA_DENTE) #freq diária que escova os dentes (>=3 vezes)

tabelas_10_4x <- modelo5(var=pense$ESCOVA_DENTE,
                         var_string="ESCOVA_DENTE",
                         var_titulo="Frequência com que escova os dentes por dia",
                         valor="3 vezes ou mais",
                         filtragem=5)

tabela_10_41 <- tabelas_10_4x$tabela1
tabela_10_42 <- tabelas_10_4x$tabela2
tabela_10_43 <- tabelas_10_4x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.4.1")
writeData(wb,"10.4.1",tabela_10_41)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.4.2")
writeData(wb,"10.4.2",tabela_10_42)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.4.3")
writeData(wb,"10.4.3",tabela_10_43)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



## TABELA 10.5.x ##

table(pense$B10002) #teve dor no dente?

tabelas_10_5x <- modelo5(var=pense$B10002,
                         var_string="B10002",
                         var_titulo="Teve dor no dente nos últimos 30 dias?",
                         valor="Sim",
                         filtragem=2)

tabela_10_51 <- tabelas_10_5x$tabela1
tabela_10_52 <- tabelas_10_5x$tabela2
tabela_10_53 <- tabelas_10_5x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.5.1")
writeData(wb,"10.5.1",tabela_10_51)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.5.2")
writeData(wb,"10.5.2",tabela_10_52)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.5.3")
writeData(wb,"10.5.3",tabela_10_53)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



## TABELA 10.6.x ##

table(pense$B10003) #freq anual de ida ao dentista
table(pense$DENTISTA) #freq anual de ida ao dentista (>=2 vezes)

tabelas_10_6x <- modelo5(var=pense$DENTISTA,
                         var_string="DENTISTA",
                         var_titulo="Frequência de ida ao dentista no último ano",
                         valor=c("Nenhuma vez", "1 vez", "2 vezes ou mais"),
                         filtragem=2:4)

tabela_10_61 <- tabelas_10_6x$tabela1
tabela_10_62 <- tabelas_10_6x$tabela2
tabela_10_63 <- tabelas_10_6x$tabela3

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.6.1")
writeData(wb,"10.6.1",tabela_10_61)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.6.2")
writeData(wb,"10.6.2",tabela_10_62)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema10/Tema10.xlsx")
addWorksheet(wb,"10.6.3")
writeData(wb,"10.6.3",tabela_10_63)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)
