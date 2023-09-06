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



## TABELA 4.5.x ##
#Esses valores serão aproximaçÕes
#Como não temos o método exato de cálculo, as estimativas não batem exatamente
#Podem haver diferenças de até 5 pp
table(pense$ATIVIDADE) #tempo de atividade física

tabela_451 <- modelo1(DESENHO=subset(desenho_validos, pense$ATIVIDADE!=-2),
                      VAR_COL="ATIVIDADE",
                      NOME_VAR_COL="Tempo de atividade física por semana",
                      VETOR_COL=c("Inativo", "1 a 149 minutos", "150 a 299 minutos",
                                  "300 minutos ou mais"),
                      FILTRO=2:5,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_452 <- modelo2(DESENHO=subset(desenho_validos, pense$ATIVIDADE!=-2),
                      VAR_COL="ATIVIDADE",
                      NOME_VAR_COL="Tempo de atividade física por semana",
                      VETOR_COL=c("Inativo", "1 a 149 minutos", "150 a 299 minutos",
                                  "300 minutos ou mais"),
                      FILTRO=2:5,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_453 <- modelo3(DESENHO=subset(desenho_validos, pense$ATIVIDADE!=-2),
                      VAR_COL="ATIVIDADE",
                      NOME_VAR_COL="Tempo de atividade física por semana",
                      VETOR_COL=c("Inativo", "1 a 149 minutos", "150 a 299 minutos",
                                  "300 minutos ou mais"),
                      FILTRO=2:5,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.5.1")
writeData(wb,"4.5.1",tabela_451)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.5.2")
writeData(wb,"4.5.2",tabela_452)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.5.3")
writeData(wb,"4.5.3",tabela_453)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.6.x ##

table(pense$ATIVIDADE) #tempo de atividade física (>=300 minutos)

startTime <- Sys.time()
tabelas_46x <- modelo5(var=pense$ATIVIDADE,
                       var_string="ATIVIDADE",
                       var_titulo="Tempo de atividade física por semana",
                       valor="300 minutos ou mais",
                       filtragem=5)
endTime <- Sys.time()

tabela_461 <- tabelas_46x$tabela1
tabela_462 <- tabelas_46x$tabela2
tabela_463 <- tabelas_46x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.6.1")
writeData(wb,"4.6.1",tabela_461)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.6.2")
writeData(wb,"4.6.2",tabela_462)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.6.3")
writeData(wb,"4.6.3",tabela_463)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.7.x ##

table(pense$ATIVIDADE) #tempo de atividade física (Inativo)

startTime <- Sys.time()
tabelas_47x <- modelo5(var=pense$ATIVIDADE,
                       var_string="ATIVIDADE",
                       var_titulo="Tempo de atividade física por semana",
                       valor="Inativo",
                       filtragem=2)
endTime <- Sys.time()

tabela_471 <- tabelas_47x$tabela1
tabela_472 <- tabelas_47x$tabela2
tabela_473 <- tabelas_47x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.7.1")
writeData(wb,"4.7.1",tabela_471)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.7.2")
writeData(wb,"4.7.2",tabela_472)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.7.3")
writeData(wb,"4.7.3",tabela_473)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.8.x ##

table(pense$TELEVISAO) #tempo diário em frente à tv

startTime <- Sys.time()
tabelas_48x <- modelo5(var=pense$TELEVISAO,
                       var_string="TELEVISAO",
                       var_titulo="Tempo diário em frente à tv",
                       valor="Mais de 2 horas",
                       filtragem=5)
endTime <- Sys.time()

tabela_481 <- tabelas_48x$tabela1
tabela_482 <- tabelas_48x$tabela2
tabela_483 <- tabelas_48x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.8.1")
writeData(wb,"4.8.1",tabela_481)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.8.2")
writeData(wb,"4.8.2",tabela_482)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.8.3")
writeData(wb,"4.8.3",tabela_483)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)



## TABELA 4.8.x ##

table(pense$SENTADO) #tempo diário sentado

startTime <- Sys.time()
tabelas_49x <- modelo5(var=pense$SENTADO,
                       var_string="SENTADO",
                       var_titulo="Tempo diário sentado (fora da escola)",
                       valor="Mais de 3 horas",
                       filtragem=5)
endTime <- Sys.time()

tabela_491 <- tabelas_49x$tabela1
tabela_492 <- tabelas_49x$tabela2
tabela_493 <- tabelas_49x$tabela3

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.9.1")
writeData(wb,"4.9.1",tabela_491)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.9.2")
writeData(wb,"4.9.2",tabela_492)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema04/Tema04.xlsx")
addWorksheet(wb,"4.9.3")
writeData(wb,"4.9.3",tabela_493)
saveWorkbook(wb,"Tema04/Tema04.xlsx",overwrite = TRUE)
