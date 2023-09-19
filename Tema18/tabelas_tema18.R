## TABELA 18.1.x ##

table(pense$E01P51) #a água potável foi testada?
table(pense$AGUA_POTAVEL) #existe água potável?

tabelas_18_1x <- modelo7(var=pense$AGUA_POTAVEL,
                         var_string="AGUA_POTAVEL",
                         var_titulo="A escola possui água potável",
                         valor="Sim",
                         filtragem=2)

tabela_18_11 <- tabelas_18_1x$tabela1
tabela_18_12 <- tabelas_18_1x$tabela2
tabela_18_13 <- tabelas_18_1x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.1.1")
writeData(wb,"18.1.1",tabela_18_11)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.1.2")
writeData(wb,"18.1.2",tabela_18_12)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.1.3")
writeData(wb,"18.1.3",tabela_18_13)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



#18.2.x - SEM INFO

## TABELA 18.3.x ##

table(pense$E01P51) #a água potável foi testada?

tabelas_18_3x <- modelo7(var=pense$E01P51,
                         var_string="E01P51",
                         var_titulo="A potabilidade da água foi testada no último ano?",
                         valor="Sim",
                         filtragem=2)

tabela_18_31 <- tabelas_18_3x$tabela1
tabela_18_32 <- tabelas_18_3x$tabela2
tabela_18_33 <- tabelas_18_3x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.3.1")
writeData(wb,"18.3.1",tabela_18_31)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.3.2")
writeData(wb,"18.3.2",tabela_18_32)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.3.3")
writeData(wb,"18.3.3",tabela_18_33)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



## TABELA 18.4.x ##

table(pense$E01P55A) #A escola oferece papel higiênico
table(pense$POSSUI_BANHEIRO) #A escola possui banheiros em condições de uso

tabelas_18_4x <- modelo7(var=pense$POSSUI_BANHEIRO,
                         var_string="POSSUI_BANHEIRO",
                         var_titulo="A escola possui banheiros em condições de uso",
                         valor="Sim",
                         filtragem=2)

tabela_18_41 <- tabelas_18_4x$tabela1
tabela_18_42 <- tabelas_18_4x$tabela2
tabela_18_43 <- tabelas_18_4x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.4.1")
writeData(wb,"18.4.1",tabela_18_41)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.4.2")
writeData(wb,"18.4.2",tabela_18_42)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.4.3")
writeData(wb,"18.4.3",tabela_18_43)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



#18.5.x - SEM INFO

## TABELA 18.6.x ##

table(pense$E01P55A) #A escola oferece papel higiênico aos alunos

tabelas_18_6x <- modelo7(var=pense$E01P55A,
                         var_string="E01P55A",
                         var_titulo="A escola oferece papel higiênico aos alunos",
                         valor="Sim",
                         filtragem=2)

tabela_18_61 <- tabelas_18_6x$tabela1
tabela_18_62 <- tabelas_18_6x$tabela2
tabela_18_63 <- tabelas_18_6x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.6.1")
writeData(wb,"18.6.1",tabela_18_61)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.6.2")
writeData(wb,"18.6.2",tabela_18_62)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.6.3")
writeData(wb,"18.6.3",tabela_18_63)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

## TABELA 18.7.x ##

table(pense$E01P56) #A escola possui pia/lavatório em condições de uso

tabelas_18_7x <- modelo7(var=pense$E01P56,
                         var_string="E01P56",
                         var_titulo="A escola possui pia/lavatório em condições de uso",
                         valor="Sim",
                         filtragem=1)

tabela_18_71 <- tabelas_18_7x$tabela1
tabela_18_72 <- tabelas_18_7x$tabela2
tabela_18_73 <- tabelas_18_7x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.7.1")
writeData(wb,"18.7.1",tabela_18_71)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.7.2")
writeData(wb,"18.7.2",tabela_18_72)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.7.3")
writeData(wb,"18.7.3",tabela_18_73)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)




## TABELA 18.8.x ##

table(pense$E01P57) #A escola oferece sabão para que os alunos lavem as mãos

tabelas_18_8x <- modelo7(var=pense$E01P57,
                         var_string="E01P57",
                         var_titulo="A escola oferece sabão para que os alunos lavem as mãos",
                         valor="Sim",
                         filtragem=1)

tabela_18_81 <- tabelas_18_8x$tabela1
tabela_18_82 <- tabelas_18_8x$tabela2
tabela_18_83 <- tabelas_18_8x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.8.1")
writeData(wb,"18.8.1",tabela_18_81)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.8.2")
writeData(wb,"18.8.2",tabela_18_82)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.8.3")
writeData(wb,"18.8.3",tabela_18_83)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



## TABELA 18.9.x ##

table(pense$E01P56) #A escola possui pia/lavatório em condições de uso
table(pense$E01P57) #A escola oferece sabão para que os alunos lavem as mãos
table(pense$SABAO_PIA) #A escola possui pia/lavatório em condições de uso e oferece sabão aos alunos

tabelas_18_9x <- modelo7(var=pense$SABAO_PIA,
                         var_string="SABAO_PIA",
                         var_titulo="A escola possui pia/lavatório em condições de uso e oferece sabão aos alunos",
                         valor="Sim",
                         filtragem=3)

tabela_18_91 <- tabelas_18_9x$tabela1
tabela_18_92 <- tabelas_18_9x$tabela2
tabela_18_93 <- tabelas_18_9x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.9.1")
writeData(wb,"18.9.1",tabela_18_91)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.9.2")
writeData(wb,"18.9.2",tabela_18_92)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.9.3")
writeData(wb,"18.9.3",tabela_18_93)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



## TABELA 18.10.x ##

table(pense$E01P58A1) #Freq lixo removido do espaço interno
table(pense$LIXO_INTERNO) #Frequência com que o lixo foi removido dos espaços internos da escola na última semana

tabelas_18_10x <- modelo7(var=pense$LIXO_INTERNO,
                         var_string="LIXO_INTERNO",
                         var_titulo="Frequência com que o lixo foi removido dos espaços internos da escola na última semana",
                         valor="Menos de 3 vezes",
                         filtragem=1)

tabela_18_101 <- tabelas_18_10x$tabela1
tabela_18_102 <- tabelas_18_10x$tabela2
tabela_18_103 <- tabelas_18_10x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.10.1")
writeData(wb,"18.10.1",tabela_18_101)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.10.2")
writeData(wb,"18.10.2",tabela_18_102)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.10.3")
writeData(wb,"18.10.3",tabela_18_103)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)



## TABELA 18.11.x ##

table(pense$E01P58A2) #Freq lixo removido para fora da escola
table(pense$LIXO_FORA) #Frequência com que o lixo foi retirado para fora da escola na última semana

tabelas_18_11x <- modelo7(var=pense$LIXO_FORA,
                          var_string="LIXO_FORA",
                          var_titulo="Frequência com que o lixo foi retirado para fora da escola na última semana",
                          valor="Menos de 3 vezes",
                          filtragem=1)

tabela_18_111 <- tabelas_18_11x$tabela1
tabela_18_112 <- tabelas_18_11x$tabela2
tabela_18_113 <- tabelas_18_11x$tabela3

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.11.1")
writeData(wb,"18.11.1",tabela_18_111)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.11.2")
writeData(wb,"18.11.2",tabela_18_112)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema18/Tema18.xlsx")
addWorksheet(wb,"18.11.3")
writeData(wb,"18.11.3",tabela_18_113)
saveWorkbook(wb,"Tema18/Tema18.xlsx",overwrite = TRUE)
