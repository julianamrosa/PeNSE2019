## TABELA 11.1.x ##

table(pense$B11007) #sentimento em relacao ao corpo
table(pense$SENTIMENTO) #senitmento em relacao ao corpo -> 3 categorias

tabelas_11_1x <- modelo5(var=pense$SENTIMENTO,
                         var_string="SENTIMENTO",
                         var_titulo="Sentimento em relação ao próprio corpo",
                         valor=c("Muito satisfeito ou satisfeito",
                                 "Indiferente",
                                 "Insatisfeito ou muito insatisfeito"),
                         filtragem=2:4)

tabela_11_11 <- tabelas_11_1x$tabela1
tabela_11_12 <- tabelas_11_1x$tabela2
tabela_11_13 <- tabelas_11_1x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.1.1")
writeData(wb,"11.1.1",tabela_11_11)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.1.2")
writeData(wb,"11.1.2",tabela_11_12)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.1.3")
writeData(wb,"11.1.3",tabela_11_13)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)



## TABELA 11.2.x ##

table(pense$B11001) #autopercepcao da sua imagem corporal
table(pense$AUTOPERCEPCAO) #autopercepcao da sua imagem corporal -> 3 categorias

tabelas_11_2x <- modelo5(var=pense$AUTOPERCEPCAO,
                         var_string="AUTOPERCEPCAO",
                         var_titulo="Autopercepção da sua imagem corporal",
                         valor=c("Muito magro ou magro", "Normal", "Gordo ou muito gordo"),
                         filtragem=2:4)

tabela_11_21 <- tabelas_11_2x$tabela1
tabela_11_22 <- tabelas_11_2x$tabela2
tabela_11_23 <- tabelas_11_2x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.2.1")
writeData(wb,"11.2.1",tabela_11_21)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.2.2")
writeData(wb,"11.2.2",tabela_11_22)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.2.3")
writeData(wb,"11.2.3",tabela_11_23)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)



## TABELA 11.3.x ##

table(pense$B11002) #o que esta fazendo em relacao ao peso

tabelas_11_3x <- modelo5(var=pense$B11002,
                         var_string="B11002",
                         var_titulo="Intenção sobre o seu peso atual",
                         valor=c("Não fazer nada", "Perder peso",
                                 "Ganhar peso", "Manter peso"),
                         filtragem=2:5)

tabela_11_31 <- tabelas_11_3x$tabela1
tabela_11_32 <- tabelas_11_3x$tabela2
tabela_11_33 <- tabelas_11_3x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.3.1")
writeData(wb,"11.3.1",tabela_11_31)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.3.2")
writeData(wb,"11.3.2",tabela_11_32)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.3.3")
writeData(wb,"11.3.3",tabela_11_33)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)



## TABELA 11.4.x ##

table(pense$B11003) #vomitou/ tomou laxantes para perder peso

tabelas_11_4x <- modelo5(var=pense$B11003,
                         var_string="B11003",
                         var_titulo="Você vomitou ou tomou laxantes para perder peso no último mês?",
                         valor="Sim",
                         filtragem=2)

tabela_11_41 <- tabelas_11_4x$tabela1
tabela_11_42 <- tabelas_11_4x$tabela2
tabela_11_43 <- tabelas_11_4x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.4.1")
writeData(wb,"11.4.1",tabela_11_41)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.4.2")
writeData(wb,"11.4.2",tabela_11_42)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.4.3")
writeData(wb,"11.4.3",tabela_11_43)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)



## TABELA 11.5.x ##

table(pense$B11004A) #ingeriu algum produto para perda de peso sem acompanhamento médico

tabelas_11_5x <- modelo5(var=pense$B11004A,
                         var_string="B11004A",
                         var_titulo="Você ingeriu algum produto para perda de peso, sem acompanhamento médico, no último mês?",
                         valor="Sim",
                         filtragem=2)

tabela_11_51 <- tabelas_11_5x$tabela1
tabela_11_52 <- tabelas_11_5x$tabela2
tabela_11_53 <- tabelas_11_5x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.5.1")
writeData(wb,"11.5.1",tabela_11_51)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.5.2")
writeData(wb,"11.5.2",tabela_11_52)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.5.3")
writeData(wb,"11.5.3",tabela_11_53)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)



## TABELA 11.6.x ##

table(pense$B11005) #ingeriu algum produto para ganho de peso sem acompanhamento médico

tabelas_11_6x <- modelo5(var=pense$B11005,
                         var_string="B11005",
                         var_titulo="Você ingeriu algum produto para ganho de peso, sem acompanhamento médico, no último mês?",
                         valor="Sim",
                         filtragem=2)

tabela_11_61 <- tabelas_11_6x$tabela1
tabela_11_62 <- tabelas_11_6x$tabela2
tabela_11_63 <- tabelas_11_6x$tabela3

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.6.1")
writeData(wb,"11.6.1",tabela_11_61)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.6.2")
writeData(wb,"11.6.2",tabela_11_62)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema11/Tema11.xlsx")
addWorksheet(wb,"11.6.3")
writeData(wb,"11.6.3",tabela_11_63)
saveWorkbook(wb,"Tema11/Tema11.xlsx",overwrite = TRUE)
