## TABELA 6.1.x ##

table(pense$B05002A) #já experimentou bebida alcoolica

tabelas_61x <- modelo5(var=pense$B05002A,
                       var_string="B05002A",
                       var_titulo="Já experimentou bebida alcoólica alguma vez?",
                       valor="Sim",
                       filtragem=3)

tabela_611 <- tabelas_61x$tabela1
tabela_612 <- tabelas_61x$tabela2
tabela_613 <- tabelas_61x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.1.1")
writeData(wb,"6.1.1",tabela_611)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.1.2")
writeData(wb,"6.1.2",tabela_612)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.1.3")
writeData(wb,"6.1.3",tabela_613)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.2.x ##

table(pense$ALCOOL_IDADE) #bebeu por primeira vez com menos de 13 anos

tabelas_62x <- modelo6(var=pense$ALCOOL_IDADE,
                       var_string="ALCOOL_IDADE",
                       var_titulo="Idade que tinha quando experimentou bebida alcoólica por primeira vez",
                       valor="Menos de 13 anos",
                       filtragem=3)

tabela_621 <- tabelas_62x$tabela1
tabela_622 <- tabelas_62x$tabela2
tabela_623 <- tabelas_62x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.2.1")
writeData(wb,"6.2.1",tabela_621)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.2.2")
writeData(wb,"6.2.2",tabela_622)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.2.3")
writeData(wb,"6.2.3",tabela_623)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.3.x ##

table(pense$BEBADO) #já ficou bêbado alguma vez

tabelas_63x <- modelo5(var=pense$BEBADO,
                       var_string="BEBADO",
                       var_titulo="Já ficou bêbado alguma vez",
                       valor="Sim",
                       filtragem=4)

tabela_631 <- tabelas_63x$tabela1
tabela_632 <- tabelas_63x$tabela2
tabela_633 <- tabelas_63x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.3.1")
writeData(wb,"6.3.1",tabela_631)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.3.2")
writeData(wb,"6.3.2",tabela_632)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.3.3")
writeData(wb,"6.3.3",tabela_633)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.4.x ##

table(pense$PROBLEMAS_ALCOOL) #tiveram problemas pessoais em decorrência do alcool

tabelas_64x <- modelo5(var=pense$PROBLEMAS_ALCOOL,
                       var_string="PROBLEMAS_ALCOOL",
                       var_titulo="Já tiveram problemas pessoas em decorrência do consumo de bebidas alcoólicas?",
                       valor="Sim",
                       filtragem=4)

tabela_641 <- tabelas_64x$tabela1
tabela_642 <- tabelas_64x$tabela2
tabela_643 <- tabelas_64x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.4.1")
writeData(wb,"6.4.1",tabela_641)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.4.2")
writeData(wb,"6.4.2",tabela_642)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.4.3")
writeData(wb,"6.4.3",tabela_643)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.5.x ##

table(pense$PROBLEMAS_ALCOOL) #consumiu alguma bebida alcoólica nos últimos 30 dias

tabelas_65x <- modelo6(var=pense$BEBEU_30DIAS,
                       var_string="BEBEU_30DIAS",
                       var_titulo="Consumiu alguma bebida alcoólica nos últimos 30 dias",
                       valor="Sim",
                       filtragem=4)

tabela_651 <- tabelas_65x$tabela1
tabela_652 <- tabelas_65x$tabela2
tabela_653 <- tabelas_65x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.5.1")
writeData(wb,"6.5.1",tabela_651)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.5.2")
writeData(wb,"6.5.2",tabela_652)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.5.3")
writeData(wb,"6.5.3",tabela_653)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.6.x ##

table(pense$B05005A) #modo de obtenção do cigarro

tabela_661 <- modelo1(DESENHO=subset(desenho_validos, (pense$B05005A=-2
                                                       & pense$B05005A!=-1)),
                      VAR_COL="B05005A",
                      NOME_VAR_COL="Copos/doses de bebida alcoólica por dia",
                      VETOR_COL=c("1", "2", "3", "4", "5 ou mais"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_662 <- modelo2(DESENHO=subset(desenho_validos, (pense$B05005A!=-2
                                                       & pense$B05005A!=-1)),
                      VAR_COL="B05005A",
                      NOME_VAR_COL="Copos/doses de bebida alcoólica por dia",
                      VETOR_COL=c("1", "2", "3", "4", "5 ou mais"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_663 <- modelo3(DESENHO=subset(desenho_validos,
                                     (pense$B05005A!=-2
                                      & pense$B05005A!=-1)),
                      VAR_COL="B05005A",
                      NOME_VAR_COL="Copos/doses de bebida alcoólica por dia",
                      VETOR_COL=c("1", "2", "3", "4", "5 ou mais"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.6.1")
writeData(wb,"6.6.1",tabela_661)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.6.2")
writeData(wb,"6.6.2",tabela_662)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.6.3")
writeData(wb,"6.6.3",tabela_663)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.7.x ##

table(pense$DOSES) #copos/doses de bebida por dia (>=4)

tabelas_67x <- modelo5(var=pense$DOSES,
                       var_string="DOSES",
                       var_titulo="Consumiram 4 doses ou mais em um dia, dentre os que consumiram alguma bebida alcoólica",
                       valor="Sim",
                       filtragem=6)

tabela_671 <- tabelas_67x$tabela1
tabela_672 <- tabelas_67x$tabela2
tabela_673 <- tabelas_67x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.7.1")
writeData(wb,"6.7.1",tabela_671)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.7.2")
writeData(wb,"6.7.2",tabela_672)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.7.3")
writeData(wb,"6.7.3",tabela_673)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.8.x ##

table(pense$B05005A) #copos/doses de bebida por dia (>=5)

tabelas_68x <- modelo5(var=pense$B05005A,
                       var_string="B05005A",
                       var_titulo="Consumiram 5 doses ou mais em um dia, dentre os que consumiram alguma bebida alcoólica",
                       valor="Sim",
                       filtragem=7)

tabela_681 <- tabelas_68x$tabela1
tabela_682 <- tabelas_68x$tabela2
tabela_683 <- tabelas_68x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.8.1")
writeData(wb,"6.8.1",tabela_681)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.8.2")
writeData(wb,"6.8.2",tabela_682)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.8.3")
writeData(wb,"6.8.3",tabela_683)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.9.x ##

table(pense$DOSES) #copos/doses de bebida por dia (>=4)

tabelas_69x <- modelo6(var=pense$DOSES,
                       var_string="DOSES",
                       var_titulo="Consumiram 4 doses ou mais em um dia",
                       valor="Sim",
                       filtragem=6)

tabela_691 <- tabelas_69x$tabela1
tabela_692 <- tabelas_69x$tabela2
tabela_693 <- tabelas_69x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.9.1")
writeData(wb,"6.9.1",tabela_691)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.9.2")
writeData(wb,"6.9.2",tabela_692)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.9.3")
writeData(wb,"6.9.3",tabela_693)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



## TABELA 6.10.x ##

table(pense$B05005A) #copos/doses de bebida por dia (>=5)

tabelas_610x <- modelo6(var=pense$B05005A,
                       var_string="B05005A",
                       var_titulo="Consumiram 5 doses ou mais em um dia",
                       valor="Sim",
                       filtragem=7)

tabela_6101 <- tabelas_610x$tabela1
tabela_6102 <- tabelas_610x$tabela2
tabela_6103 <- tabelas_610x$tabela3

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.10.1")
writeData(wb,"6.10.1",tabela_6101)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.10.2")
writeData(wb,"6.10.2",tabela_6102)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema06/Tema06.xlsx")
addWorksheet(wb,"6.10.3")
writeData(wb,"6.10.3",tabela_6103)
saveWorkbook(wb,"Tema06/Tema06.xlsx",overwrite = TRUE)



