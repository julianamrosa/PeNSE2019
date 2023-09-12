## TABELA 12.1.x ##

table(pense$B12003) #amigos proximos

tabelas_12_1x <- modelo5(var=pense$B12003,
                         var_string="B12003",
                         var_titulo="Quantidade de amigos próximos",
                         valor="Nenhum",
                         filtragem=2)

tabela_12_11 <- tabelas_12_1x$tabela1
tabela_12_12 <- tabelas_12_1x$tabela2
tabela_12_13 <- tabelas_12_1x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.1.1")
writeData(wb,"12.1.1",tabela_12_11)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.1.2")
writeData(wb,"12.1.2",tabela_12_12)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.1.3")
writeData(wb,"12.1.3",tabela_12_13)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.2.x ##

table(pense$PREOCUPACAO) #freq da preocupacao com coisas comuns

tabelas_12_2x <- modelo5(var=pense$PREOCUPACAO,
                         var_string="PREOCUPACAO",
                         var_titulo="Frequência com que se sentiu muito preocupado com coisas do dia a dia",
                         valor="Na maioria das vezes ou sempre",
                         filtragem=5)

tabela_12_21 <- tabelas_12_2x$tabela1
tabela_12_22 <- tabelas_12_2x$tabela2
tabela_12_23 <- tabelas_12_2x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.2.1")
writeData(wb,"12.2.1",tabela_12_21)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.2.2")
writeData(wb,"12.2.2",tabela_12_22)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.2.3")
writeData(wb,"12.2.3",tabela_12_23)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.3.x ##

table(pense$TRISTE) #freq com que se sentiu triste

tabelas_12_3x <- modelo5(var=pense$TRISTE,
                         var_string="TRISTE",
                         var_titulo="Frequência com que se sentiu triste",
                         valor="Na maioria das vezes ou sempre",
                         filtragem=5)

tabela_12_31 <- tabelas_12_3x$tabela1
tabela_12_32 <- tabelas_12_3x$tabela2
tabela_12_33 <- tabelas_12_3x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.3.1")
writeData(wb,"12.3.1",tabela_12_31)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.3.2")
writeData(wb,"12.3.2",tabela_12_32)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.3.3")
writeData(wb,"12.3.3",tabela_12_33)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.4.x ##

table(pense$NINGUEM_PREOCUPA) #freq com que sentiu que ninguem se preocupa com voce

tabelas_12_4x <- modelo5(var=pense$NINGUEM_PREOCUPA,
                         var_string="NINGUEM_PREOCUPA",
                         var_titulo="Frequência com que sentiu que ninguém se preocupa com você",
                         valor="Na maioria das vezes ou sempre",
                         filtragem=5)

tabela_12_41 <- tabelas_12_4x$tabela1
tabela_12_42 <- tabelas_12_4x$tabela2
tabela_12_43 <- tabelas_12_4x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.4.1")
writeData(wb,"12.4.1",tabela_12_41)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.4.2")
writeData(wb,"12.4.2",tabela_12_42)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.4.3")
writeData(wb,"12.4.3",tabela_12_43)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.5.x ##

table(pense$IRRITADO) #freq com que se sentiu irritado

tabelas_12_5x <- modelo5(var=pense$IRRITADO,
                         var_string="IRRITADO",
                         var_titulo="Frequência com que se sentiu irritado",
                         valor="Na maioria das vezes ou sempre",
                         filtragem=5)

tabela_12_51 <- tabelas_12_5x$tabela1
tabela_12_52 <- tabelas_12_5x$tabela2
tabela_12_53 <- tabelas_12_5x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.5.1")
writeData(wb,"12.5.1",tabela_12_51)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.5.2")
writeData(wb,"12.5.2",tabela_12_52)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.5.3")
writeData(wb,"12.5.3",tabela_12_53)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.6.x ##

table(pense$VIDA_VALE) #freq com que sentiu que a vida nao vale a pena

tabelas_12_6x <- modelo5(var=pense$VIDA_VALE,
                         var_string="VIDA_VALE",
                         var_titulo="Frequência com que sentiu que a vida não vale a pena",
                         valor="Na maioria das vezes ou sempre",
                         filtragem=5)

tabela_12_61 <- tabelas_12_6x$tabela1
tabela_12_62 <- tabelas_12_6x$tabela2
tabela_12_63 <- tabelas_12_6x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.6.1")
writeData(wb,"12.6.1",tabela_12_61)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.6.2")
writeData(wb,"12.6.2",tabela_12_62)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.6.3")
writeData(wb,"12.6.3",tabela_12_63)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)



## TABELA 12.7.x ##

table(pense$AUTOAVALIACAO_NEGATIVA) #autoavaliacao em saude mental foi negativa

tabelas_12_7x <- modelo5(var=pense$AUTOAVALIACAO_NEGATIVA,
                         var_string="AUTOAVALIACAO_NEGATIVA",
                         var_titulo="Autoavaliação em saúde mental foi negativa",
                         valor="Sim",
                         filtragem=2)

tabela_12_71 <- tabelas_12_7x$tabela1
tabela_12_72 <- tabelas_12_7x$tabela2
tabela_12_73 <- tabelas_12_7x$tabela3

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.7.1")
writeData(wb,"12.7.1",tabela_12_71)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.7.2")
writeData(wb,"12.7.2",tabela_12_72)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema12/Tema12.xlsx")
addWorksheet(wb,"12.7.3")
writeData(wb,"12.7.3",tabela_12_73)
saveWorkbook(wb,"Tema12/Tema12.xlsx",overwrite = TRUE)
