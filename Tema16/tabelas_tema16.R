## TABELA 16.1.x ##

table(pense$E01P76) #As atividades físicas são realizadas sob orientação de instrutor

tabelas_16_1x <- modelo8(var=pense$E01P76,
                         var_string="E01P76",
                         var_titulo="As atividades físicas são realizadas sob orientação de instrutor",
                         valor="Sim",
                         filtragem=2)

tabela_16_11 <- tabelas_16_1x$tabela1
tabela_16_12 <- tabelas_16_1x$tabela2
tabela_16_13 <- tabelas_16_1x$tabela3

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.1.1")
writeData(wb,"16.1.1",tabela_16_11)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.1.2")
writeData(wb,"16.1.2",tabela_16_12)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.1.3")
writeData(wb,"16.1.3",tabela_16_13)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



## TABELA 16.2.x ##
#16.2.3 está faltando nas planilhas do ibge
table(pense$E01P7501) #esportes de quadra

tabelas_16_2x <- modelo7(var=pense$E01P7501,
                             var_string="E01P7501",
                             var_titulo="Atividade física ofertada",
                             valor="Esportes de quadra",
                             filtragem=3)

tabela_16_21 <- tabelas_16_2x$tabela1
tabela_16_22 <- tabelas_16_2x$tabela2
tabela_16_23 <- tabelas_16_2x$tabela3

table(pense$E01P7505) #dança

tabelas_16_2x <- modelo7(var=pense$E01P7505,
                         var_string="E01P7505",
                         var_titulo="Atividade física ofertada",
                         valor="Dança",
                         filtragem=3)

tabela_16_21 <- rbind(tabela_16_21, tabelas_16_2x$tabela1)
tabela_16_22 <- rbind(tabela_16_22, tabelas_16_2x$tabela2)
tabela_16_23 <- rbind(tabela_16_23, tabelas_16_2x$tabela3)

table(pense$E01P7504) #atletismo/corrida

tabelas_16_2x <- modelo7(var=pense$E01P7504,
                         var_string="E01P7504",
                         var_titulo="Atividade física ofertada",
                         valor="Atletismo/corrida",
                         filtragem=3)

tabela_16_21 <- rbind(tabela_16_21, tabelas_16_2x$tabela1)
tabela_16_22 <- rbind(tabela_16_22, tabelas_16_2x$tabela2)
tabela_16_23 <- rbind(tabela_16_23, tabelas_16_2x$tabela3)

table(pense$ATIVIDADE_FISICA_OUTRO) #outras

tabelas_16_2x <- modelo7(var=pense$ATIVIDADE_FISICA_OUTRO,
                         var_string="ATIVIDADE_FISICA_OUTRO",
                         var_titulo="Atividade física ofertada",
                         valor="Outras",
                         filtragem=3)

tabela_16_21 <- rbind(tabela_16_21, tabelas_16_2x$tabela1)
tabela_16_22 <- rbind(tabela_16_22, tabelas_16_2x$tabela2)
tabela_16_23 <- rbind(tabela_16_23, tabelas_16_2x$tabela3)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.2.1")
writeData(wb,"16.2.1",tabela_16_21)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.2.2")
writeData(wb,"16.2.2",tabela_16_22)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.2.3")
writeData(wb,"16.2.3",tabela_16_23)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



## TABELA 16.3.x ##

table(pense$ATIVIDADES_EXTRAS) #Atividades físicas são ofertadas fora do horário regular de aula?

tabelas_16_3x <- modelo7(var=pense$ATIVIDADES_EXTRAS,
                         var_string="ATIVIDADES_EXTRAS",
                         var_titulo="Atividades físicas são ofertadas fora do horário regular de aula?",
                         valor="Sim",
                         filtragem=2)

tabela_16_31 <- tabelas_16_3x$tabela1
tabela_16_32 <- tabelas_16_3x$tabela2
tabela_16_33 <- tabelas_16_3x$tabela3

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.3.1")
writeData(wb,"16.3.1",tabela_16_31)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.3.2")
writeData(wb,"16.3.2",tabela_16_32)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.3.3")
writeData(wb,"16.3.3",tabela_16_33)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



#16.4.x - SEM INFO
#16.5.x - SEM INFO

## TABELA 16.6.x ##

table(pense$PISTA_CORRIDA) #A escola tem pista de corrida/atletismo em condições de uso

tabelas_16_6x <- modelo7(var=pense$PISTA_CORRIDA,
                         var_string="PISTA_CORRIDA",
                         var_titulo="A escola tem pista de corrida/atletismo em condições de uso",
                         valor="Não",
                         filtragem=2)

tabela_16_61 <- tabelas_16_6x$tabela1
tabela_16_62 <- tabelas_16_6x$tabela2
tabela_16_63 <- tabelas_16_6x$tabela3

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.6.1")
writeData(wb,"16.6.1",tabela_16_61)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.6.2")
writeData(wb,"16.6.2",tabela_16_62)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.6.3")
writeData(wb,"16.6.3",tabela_16_63)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



#16.7.x - SEM INFO

## TABELA 16.8.x ##

table(pense$E01P19A) #O pátio da escola é utilizado frequentemente para prática de atividade física com instrutor?

tabelas_16_8x <- modelo7(var=pense$E01P19A,
                         var_string="E01P19A",
                         var_titulo="O pátio da escola é utilizado frequentemente para prática de atividade física com instrutor?",
                         valor="Sim",
                         filtragem=1)

tabela_16_81 <- tabelas_16_8x$tabela1
tabela_16_82 <- tabelas_16_8x$tabela2
tabela_16_83 <- tabelas_16_8x$tabela3

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.8.1")
writeData(wb,"16.8.1",tabela_16_81)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.8.2")
writeData(wb,"16.8.2",tabela_16_82)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.8.3")
writeData(wb,"16.8.3",tabela_16_83)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



#16.9.x - SEM INFO
#16.10.x - SEM INFO
#16.11.x - SEM INFO

## TABELA 16.12.x ##

table(pense$E01P38A) #jogos/competições físico-esportivas (interescolar)

tabelas_16_12x <- modelo7(var=pense$E01P38A,
                         var_string="E01P38A",
                         var_titulo="Modalidade dos jogos/competições físico-esportivos",
                         valor="Interescolar",
                         filtragem=1)

tabela_16_121 <- tabelas_16_12x$tabela1
tabela_16_122 <- tabelas_16_12x$tabela2
tabela_16_123 <- tabelas_16_12x$tabela3

table(pense$E01P39A) #jogos/competições físico-esportivas (interclasse)

tabelas_16_12x <- modelo7(var=pense$E01P39A,
                          var_string="E01P39A",
                          var_titulo="Modalidade dos jogos/competições físico-esportivos",
                          valor="Interclasse",
                          filtragem=1)

tabela_16_121 <- rbind(tabela_16_121, tabelas_16_12x$tabela1)
tabela_16_122 <- rbind(tabela_16_122, tabelas_16_12x$tabela2)
tabela_16_123 <- rbind(tabela_16_123, tabelas_16_12x$tabela3)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.12.1")
writeData(wb,"16.12.1",tabela_16_121)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.12.2")
writeData(wb,"16.12.2",tabela_16_122)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema16/Tema16.xlsx")
addWorksheet(wb,"16.12.3")
writeData(wb,"16.12.3",tabela_16_123)
saveWorkbook(wb,"Tema16/Tema16.xlsx",overwrite = TRUE)



#16.13.x - SEM INFO
#16.14.x - SEM INFO
#16.15.x - SEM INFO