## TABELA 8.1.x ##

table(pense$B08001) #já teve relaçao sexual

tabelas_81x <- modelo5(var=pense$B08001,
                       var_string="B08001",
                       var_titulo="Já teve relação sexual?",
                       valor="Sim",
                       filtragem=3)

tabela_811 <- tabelas_81x$tabela1
tabela_812 <- tabelas_81x$tabela2
tabela_813 <- tabelas_81x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.1.1")
writeData(wb,"8.1.1",tabela_811)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.1.2")
writeData(wb,"8.1.2",tabela_812)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.1.3")
writeData(wb,"8.1.3",tabela_813)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.2.x ##

table(pense$IDADE_RELACAO_SEX) #idade que tinha quando teve relação sexual por primeira vez

tabelas_82x <- modelo5(var=pense$IDADE_RELACAO_SEX,
                       var_string="IDADE_RELACAO_SEX",
                       var_titulo="Idade que tinha quando teve relação sexual por primeira vez",
                       valor="Menos de 13 anos",
                       filtragem=3)

tabela_821 <- tabelas_82x$tabela1
tabela_822 <- tabelas_82x$tabela2
tabela_823 <- tabelas_82x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.2.1")
writeData(wb,"8.2.1",tabela_821)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.2.2")
writeData(wb,"8.2.2",tabela_822)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.2.3")
writeData(wb,"8.2.3",tabela_823)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.3.x ##

table(pense$B08011A) #usou preservativo na primeira relação sexual?

tabelas_83x <- modelo5(var=pense$B08011A,
                       var_string="B08011A",
                       var_titulo="Usou preservativo na primeira relação sexual?",
                       valor="Sim",
                       filtragem=3)

tabela_831 <- tabelas_83x$tabela1
tabela_832 <- tabelas_83x$tabela2
tabela_833 <- tabelas_83x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.3.1")
writeData(wb,"8.3.1",tabela_831)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.3.2")
writeData(wb,"8.3.2",tabela_832)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.3.3")
writeData(wb,"8.3.3",tabela_833)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.4.x ##

table(pense$B08006A) #usou preservativo na última relação sexual?

tabelas_84x <- modelo5(var=pense$B08006A,
                       var_string="B08006A",
                       var_titulo="Usou preservativo na última relação sexual?",
                       valor="Sim",
                       filtragem=3)

tabela_841 <- tabelas_84x$tabela1
tabela_842 <- tabelas_84x$tabela2
tabela_843 <- tabelas_84x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.4.1")
writeData(wb,"8.4.1",tabela_841)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.4.2")
writeData(wb,"8.4.2",tabela_842)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.4.3")
writeData(wb,"8.4.3",tabela_843)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.5.x ##

table(pense$B08014) #Modo de obtenção do preservativo

tabela_851 <- modelo1(DESENHO=subset(desenho_validos, (pense$B08014!=-2
                                                       & pense$B08014!=-1)),
                      VAR_COL="B08014",
                      NOME_VAR_COL="Modo de obtenção do preservativo",
                      VETOR_COL=c("No serviço de saúde", "Na escola",
                      "Com um amigo/colega", "Com mãe, pai ou responsável",
                      "Farmácia, mercado ou loja", "Com o parceiro sexual",
                      "Com outra pessoa ou de outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_852 <- modelo2(DESENHO=subset(desenho_validos, (pense$B08014!=-2
                                                       & pense$B08014!=-1)),
                      VAR_COL="B08014",
                      NOME_VAR_COL="Modo de obtenção do preservativo",
                      VETOR_COL=c("No serviço de saúde", "Na escola",
                                  "Com um amigo/colega", "Com mãe, pai ou responsável",
                                  "Farmácia, mercado ou loja", "Com o parceiro sexual",
                                  "Com outra pessoa ou de outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_853 <- modelo3(DESENHO=subset(desenho_validos, (pense$B08014!=-2
                                                       & pense$B08014!=-1)),
                      VAR_COL="B08014",
                      NOME_VAR_COL="Modo de obtenção do preservativo",
                      VETOR_COL=c("No serviço de saúde", "Na escola",
                                  "Com um amigo/colega", "Com mãe, pai ou responsável",
                                  "Farmácia, mercado ou loja", "Com o parceiro sexual",
                                  "Com outra pessoa ou de outro modo"),
                      FILTRO=3:9,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.5.1")
writeData(wb,"8.5.1",tabela_851)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.5.2")
writeData(wb,"8.5.2",tabela_852)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.5.3")
writeData(wb,"8.5.3",tabela_853)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



