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
writeData(wb,"15.8.3",tabela_15_83)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.9.x ##

table(pense$E01P13A) #Existe ponto alternativa de venda de alimentos/bebidas no entorno da escola

tabelas_15_9x <- modelo7(var=pense$E01P13A,
                         var_string="E01P13A",
                         var_titulo="Existe ponto alternativa de venda de alimentos/bebidas no entorno da escola",
                         valor="Sim",
                         filtragem=1)

tabela_15_91 <- tabelas_15_9x$tabela1
tabela_15_92 <- tabelas_15_9x$tabela2
tabela_15_93 <- tabelas_15_9x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.9.1")
writeData(wb,"15.9.1",tabela_15_91)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.9.2")
writeData(wb,"15.9.2",tabela_15_92)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.9.3")
writeData(wb,"15.9.3",tabela_15_93)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.10.x ##

#RODAR E CONFERIR

table(pense$E01P14B01) #refrigerante - ponto alternativo

tabelas_15_10x_pt1 <- modelo7(var=pense$E01P14B01,
                             var_string="E01P14B01",
                             var_titulo="Alimento/bebida vendidos no ponto alternativo",
                             valor="Refrigerante",
                             filtragem=3)

tabela_15_101_pt1 <- tabelas_15_10x_pt1$tabela1
tabela_15_102_pt1 <- tabelas_15_10x_pt1$tabela2
tabela_15_103_pt1 <- tabelas_15_10x_pt1$tabela3

table(pense$E01P14B07) #salgadinhos industrializados - ponto alternativo

tabelas_15_10x_pt2 <- modelo7(var=pense$E01P14B07,
                             var_string="E01P14B07",
                             var_titulo="Alimento/bebida vendidos no ponto alternativo",
                             valor="Salgadinhos industrializados",
                             filtragem=3)

tabela_15_101_pt2 <- tabelas_15_10x_pt2$tabela1
tabela_15_102_pt2 <- tabelas_15_10x_pt2$tabela2
tabela_15_103_pt2 <- tabelas_15_10x_pt2$tabela3

table(pense$E01P14B05) # salgados fritos - ponto alternativo

tabelas_15_10x_pt3 <- modelo7(var=pense$E01P14B05,
                             var_string="E01P14B05",
                             var_titulo="Alimento/bebida vendidos no ponto alternativo",
                             valor="Salgados fritos",
                             filtragem=3)

tabela_15_101_pt3 <- tabelas_15_10x_pt3$tabela1
tabela_15_102_pt3 <- tabelas_15_10x_pt3$tabela2
tabela_15_103_pt3 <- tabelas_15_10x_pt3$tabela3

tabela_15_101 <- rbind(tabela_15_101_pt1, tabela_15_101_pt2, tabela_15_101_pt3)
tabela_15_102 <- rbind(tabela_15_102_pt1, tabela_15_102_pt2, tabela_15_102_pt3)
tabela_15_103 <- rbind(tabela_15_103_pt1, tabela_15_103_pt2, tabela_15_103_pt3)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.10.1")
writeData(wb,"15.10.1",tabela_15_101)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.10.2")
writeData(wb,"15.10.2",tabela_15_102)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.10.3")
writeData(wb,"15.10.3",tabela_15_103)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.11.x ##

table(pense$OFERECE_ALIMENTO) #Existe cantina na escola ou ponto alternativo de venda de alimetos/bebidas no seu entorno

tabelas_15_11x <- modelo7(var=pense$OFERECE_ALIMENTO,
                         var_string="OFERECE_ALIMENTO",
                         var_titulo="Existe cantina na escola ou ponto alternativo de venda de alimetos/bebidas no seu entorno",
                         valor="Sim",
                         filtragem=1)

tabela_15_111 <- tabelas_15_11x$tabela1
tabela_15_112 <- tabelas_15_11x$tabela2
tabela_15_113 <- tabelas_15_11x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.11.1")
writeData(wb,"15.11.1",tabela_15_111)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.11.2")
writeData(wb,"15.11.2",tabela_15_112)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.11.3")
writeData(wb,"15.11.3",tabela_15_113)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.12.x ##

table(pense$E01P78) #Existe propaganda de marcas de alimentos industrializados na escola?

tabelas_15_12x <- modelo7(var=pense$E01P78,
                          var_string="E01P78",
                          var_titulo="Existe propaganda de marcas de alimentos industrializados na escola?",
                          valor="Não",
                          filtragem=2)

tabela_15_121 <- tabelas_15_12x$tabela1
tabela_15_122 <- tabelas_15_12x$tabela2
tabela_15_123 <- tabelas_15_12x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.12.1")
writeData(wb,"15.12.1",tabela_15_121)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.12.2")
writeData(wb,"15.12.2",tabela_15_122)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.12.3")
writeData(wb,"15.12.3",tabela_15_123)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.13.x ##

table(pense$E01P49) #A escola tem horta?

tabelas_15_13x <- modelo7(var=pense$E01P49,
                          var_string="E01P49",
                          var_titulo="A escola tem horta?",
                          valor="Não",
                          filtragem=2)

tabela_15_131 <- tabelas_15_13x$tabela1
tabela_15_132 <- tabelas_15_13x$tabela2
tabela_15_133 <- tabelas_15_13x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.13.1")
writeData(wb,"15.13.1",tabela_15_131)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.13.2")
writeData(wb,"15.13.2",tabela_15_132)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.13.3")
writeData(wb,"15.13.3",tabela_15_133)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.14.x ##

table(pense$E01P49A1) #Alimentos da horta são usados no preparo da comida?

tabelas_15_14x <- modelo7(var=pense$E01P49A1,
                          var_string="E01P49A1",
                          var_titulo="Alimentos da horta são usados no preparo da comida?",
                          valor="Sim",
                          filtragem=2)

tabela_15_141 <- tabelas_15_14x$tabela1
tabela_15_142 <- tabelas_15_14x$tabela2
tabela_15_143 <- tabelas_15_14x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.14.1")
writeData(wb,"15.14.1",tabela_15_141)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.14.2")
writeData(wb,"15.14.2",tabela_15_142)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.14.3")
writeData(wb,"15.14.3",tabela_15_143)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.15.x ##

table(pense$E01P49A2) #São realizadas ações de educação alimentar/nutricional com os alunos na horta?

tabelas_15_15x <- modelo7(var=pense$E01P49A2,
                          var_string="E01P49A2",
                          var_titulo="São realizadas ações de educação alimentar/nutricional com os alunos na horta?",
                          valor="Sim",
                          filtragem=2)

tabela_15_151 <- tabelas_15_15x$tabela1
tabela_15_152 <- tabelas_15_15x$tabela2
tabela_15_153 <- tabelas_15_15x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.15.1")
writeData(wb,"15.15.1",tabela_15_151)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.15.2")
writeData(wb,"15.15.2",tabela_15_152)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.15.3")
writeData(wb,"15.15.3",tabela_15_153)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)



## TABELA 15.16.x ##
#Tabela 15.16.2 apresenta inconsistência --> veja total do Brasil na 15.16.1
table(pense$FUNCAO_HORTA) #Os alimentos da horta são usados para preparo da comida ou realização de ações de educação alimentar/nutricional

tabelas_15_16x <- modelo7(var=pense$FUNCAO_HORTA,
                          var_string="FUNCAO_HORTA",
                          var_titulo="Os alimentos da horta são usados para preparo da comida ou realização de ações de educação alimentar/nutricional",
                          valor="Sim",
                          filtragem=2)

tabela_15_161 <- tabelas_15_16x$tabela1
tabela_15_162 <- tabelas_15_16x$tabela2
tabela_15_163 <- tabelas_15_16x$tabela3

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.16.1")
writeData(wb,"15.16.1",tabela_15_161)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.16.2")
writeData(wb,"15.16.2",tabela_15_162)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema15/Tema15.xlsx")
addWorksheet(wb,"15.16.3")
writeData(wb,"15.16.3",tabela_15_163)
saveWorkbook(wb,"Tema15/Tema15.xlsx",overwrite = TRUE)
