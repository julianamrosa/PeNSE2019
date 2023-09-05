## TABELA 4.1.x ##

table(pense$ED_FISICA) #freq das aulas de educação física por semana

tabela_411 <- modelo1(DESENHO=subset(desenho_validos, pense$ED_FISICA!=-2),
                     VAR_COL="ED_FISICA",
                     NOME_VAR_COL="Frequência das aulas de educação física por semana",
                     VETOR_COL=c("Nenhum dia", "1 dia", "2 dias",
                                "3 dias", "4 dias", "5 a 7 dias"),
                     FILTRO=2:7,
                     fun_estima="estima_pct",
                     fun_arruma="tab_3vars")

tabela_412 <- modelo2(DESENHO=subset(desenho_validos, pense$ED_FISICA!=-2),
                      VAR_COL="ED_FISICA",
                      NOME_VAR_COL="Frequência das aulas de educação física por semana",
                      VETOR_COL=c("Nenhum dia", "1 dia", "2 dias",
                                  "3 dias", "4 dias", "5 a 7 dias"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_413 <- modelo3(DESENHO=subset(desenho_validos, pense$ED_FISICA!=-2),
                      VAR_COL="ED_FISICA",
                      NOME_VAR_COL="Frequência das aulas de educação física por semana",
                      VETOR_COL=c("Nenhum dia", "1 dia", "2 dias",
                                  "3 dias", "4 dias", "5 a 7 dias"),
                      FILTRO=2:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.1.1")
writeData(wb,"4.1.1",tabela_411)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.1.2")
writeData(wb,"4.1.2",tabela_412)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.1.3")
writeData(wb,"4.1.3",tabela_413)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.2.x ##

table(pense$ED_FISICA) #alunos que não têm aula de educação física

startTime <- Sys.time()
tabelas_42x <- modelo5(var=pense$ED_FISICA,
                       var_string="ED_FISICA",
                       var_titulo="Frequência das aulas de educação física por semana",
                       valor="Nenhum dia",
                       filtragem=2)
endTime <- Sys.time()

tabela_421 <- tabelas_42x$tabela1
tabela_422 <- tabelas_42x$tabela2
tabela_423 <- tabelas_42x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.2.1")
writeData(wb,"4.2.1",tabela_421)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.2.2")
writeData(wb,"4.2.2",tabela_422)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.2.3")
writeData(wb,"4.2.3",tabela_423)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.3.x ##

table(pense$ED_FISICA) #alunos que têm 1 aula de educação física

startTime <- Sys.time()
tabelas_43x <- modelo5(var=pense$ED_FISICA,
                       var_string="ED_FISICA",
                       var_titulo="Frequência das aulas de educação física por semana",
                       valor="1 dia",
                       filtragem=3)
endTime <- Sys.time()

tabela_431 <- tabelas_43x$tabela1
tabela_432 <- tabelas_43x$tabela2
tabela_433 <- tabelas_43x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.3.1")
writeData(wb,"4.3.1",tabela_431)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.3.2")
writeData(wb,"4.3.2",tabela_432)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.3.3")
writeData(wb,"4.3.3",tabela_433)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.4.x ##

table(pense$ED_FISICA2) #alunos que têm 2 aulas ou mais de educação física

startTime <- Sys.time()
tabelas_44x <- modelo5(var=pense$ED_FISICA2,
                       var_string="ED_FISICA2",
                       var_titulo="Frequência das aulas de educação física por semana",
                       valor="2 dias ou mais",
                       filtragem=4)
endTime <- Sys.time()

tabela_441 <- tabelas_44x$tabela1
tabela_442 <- tabelas_44x$tabela2
tabela_443 <- tabelas_44x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.4.1")
writeData(wb,"4.4.1",tabela_441)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.4.2")
writeData(wb,"4.4.2",tabela_442)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.4.3")
writeData(wb,"4.4.3",tabela_443)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



