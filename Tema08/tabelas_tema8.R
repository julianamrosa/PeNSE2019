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



## TABELA 8.6.x ##

table(pense$CONTRACEPTIVO) #metodo contraceptivo

tabela_861 <- modelo1(DESENHO=subset(desenho_validos, (pense$CONTRACEPTIVO!=-2
                                                       & pense$CONTRACEPTIVO!=-1)),
                      VAR_COL="CONTRACEPTIVO",
                      NOME_VAR_COL="Método contraceptivo que não seja preservativo",
                      VETOR_COL=c("Pílula anticoncepcional", "Injetável",
                      "Pílula do dia seguinte", "Outros", "Não sei"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_862 <- modelo2(DESENHO=subset(desenho_validos, (pense$CONTRACEPTIVO!=-2
                                                       & pense$CONTRACEPTIVO!=-1)),
                      VAR_COL="CONTRACEPTIVO",
                      NOME_VAR_COL="Método contraceptivo que não seja preservativo",
                      VETOR_COL=c("Pílula anticoncepcional", "Injetável",
                                  "Pílula do dia seguinte", "Outros", "Não sei"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_863 <- modelo3(DESENHO=subset(desenho_validos, (pense$CONTRACEPTIVO!=-2
                                                       & pense$CONTRACEPTIVO!=-1)),
                      VAR_COL="CONTRACEPTIVO",
                      NOME_VAR_COL="Método contraceptivo que não seja preservativo",
                      VETOR_COL=c("Pílula anticoncepcional", "Injetável",
                                  "Pílula do dia seguinte", "Outros", "Não sei"),
                      FILTRO=3:7,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.6.1")
writeData(wb,"8.6.1",tabela_861)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.6.2")
writeData(wb,"8.6.2",tabela_862)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.6.3")
writeData(wb,"8.6.3",tabela_863)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.7.x ##

table(pense$B08015) #já precisou de pílula do dia seguinte, dentre os que já tiveram relações sexuais

tabelas_87x <- modelo5(var=pense$B08015,
                       var_string="B08015",
                       var_titulo="Já precisou de pílula do dia seguinte, dentre os que já tiveram relações sexuais",
                       valor="Sim",
                       filtragem=3)

tabela_871 <- tabelas_87x$tabela1
tabela_872 <- tabelas_87x$tabela2
tabela_873 <- tabelas_87x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.7.1")
writeData(wb,"8.7.1",tabela_871)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.7.2")
writeData(wb,"8.7.2",tabela_872)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.7.3")
writeData(wb,"8.7.3",tabela_873)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.8.x ##

table(pense$B08016) #modo de obtenção da pílula do dia seguinte

tabela_881 <- modelo1(DESENHO=subset(desenho_validos, (pense$B08016!=-2
                                                       & pense$B08016!=-1)),
                      VAR_COL="B08016",
                      NOME_VAR_COL="Modo de obtenção da pílula do dia seguinte",
                      VETOR_COL=c("No serviço de saúde",
                                  "Com um amigo/colega",
                                  "Com mãe/pai/responsável",
                                  "Comprou na farmácia",
                                  "Com o parceiro sexual",
                                  "Outro"),
                      FILTRO=3:8,
                      fun_estima="estima_pct",
                      fun_arruma="tab_3vars")

tabela_882 <- modelo2(DESENHO=subset(desenho_validos, (pense$B08016!=-2
                                                       & pense$B08016!=-1)),
                      VAR_COL="B08016",
                      NOME_VAR_COL="Modo de obtenção da pílula do dia seguinte",
                      VETOR_COL=c("No serviço de saúde",
                                  "Com um amigo/colega",
                                  "Com mãe/pai/responsável",
                                  "Comprou na farmácia",
                                  "Com o parceiro sexual",
                                  "Outro"),
                      FILTRO=3:8,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

tabela_883 <- modelo3(DESENHO=subset(desenho_validos, (pense$B08016!=-2
                                                       & pense$B08016!=-1)),
                      VAR_COL="B08016",
                      NOME_VAR_COL="Modo de obtenção da pílula do dia seguinte",
                      VETOR_COL=c("No serviço de saúde",
                                  "Com um amigo/colega",
                                  "Com mãe/pai/responsável",
                                  "Comprou na farmácia",
                                  "Com o parceiro sexual",
                                  "Outro"),
                      FILTRO=3:8,
                      fun_estima="estima_pct",
                      fun_arruma="tab_2vars")

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.8.1")
writeData(wb,"8.8.1",tabela_881)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.8.2")
writeData(wb,"8.8.2",tabela_882)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.8.3")
writeData(wb,"8.8.3",tabela_883)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.9.x ##

table(pense$B08008A) #recebeu orientação, na escola, sobre prevenção de gravidez

tabelas_89x <- modelo5(var=pense$B08008A,
                       var_string="B08008A",
                       var_titulo="Recebeu orientação, na escola, sobre prevenção de gravidez",
                       valor="Sim",
                       filtragem=3)

tabela_891 <- tabelas_89x$tabela1
tabela_892 <- tabelas_89x$tabela2
tabela_893 <- tabelas_89x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.9.1")
writeData(wb,"8.9.1",tabela_891)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.9.2")
writeData(wb,"8.9.2",tabela_892)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.9.3")
writeData(wb,"8.9.3",tabela_893)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.10.x ##

table(pense$B08009A) #recebeu orientação, na escola, sobre dsts

tabelas_810x <- modelo5(var=pense$B08009A,
                       var_string="B08009A",
                       var_titulo="Recebeu orientação, na escola, sobre doenças sexualmente transmissíveis",
                       valor="Sim",
                       filtragem=3)

tabela_8101 <- tabelas_810x$tabela1
tabela_8102 <- tabelas_810x$tabela2
tabela_8103 <- tabelas_810x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.10.1")
writeData(wb,"8.10.1",tabela_8101)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.10.2")
writeData(wb,"8.10.2",tabela_8102)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.10.3")
writeData(wb,"8.10.3",tabela_8103)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.11.x ##

table(pense$B08010A) #recebeu orientação, na escola, sobre aquisição gratuita de preservativos

tabelas_811x <- modelo5(var=pense$B08010A,
                        var_string="B08010A",
                        var_titulo="Recebeu orientação, na escola, sobre aquisição gratuita de preservativos",
                        valor="Sim",
                        filtragem=3)

tabela_8111 <- tabelas_811x$tabela1
tabela_8112 <- tabelas_811x$tabela2
tabela_8113 <- tabelas_811x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.11.1")
writeData(wb,"8.11.1",tabela_8111)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.11.2")
writeData(wb,"8.11.2",tabela_8112)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.11.3")
writeData(wb,"8.11.3",tabela_8113)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)



## TABELA 8.12.x ##
#tirar sexo (manter soh dep adm)
table(pense$B08013A) #já engravidou alguma vez, dentre as que já tiveram relação sexual

tabelas_812x <- modelo5(var=pense$B08013A,
                        var_string="B08013A",
                        var_titulo="Já engravidou alguma vez, dentre as que já tiveram relação sexual",
                        valor="Sim",
                        filtragem=3)

tabela_8121 <- tabelas_812x$tabela1
tabela_8122 <- tabelas_812x$tabela2
tabela_8123 <- tabelas_812x$tabela3

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.12.1")
writeData(wb,"8.12.1",tabela_8121)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.12.2")
writeData(wb,"8.12.2",tabela_8122)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema08/Tema08.xlsx")
addWorksheet(wb,"8.12.3")
writeData(wb,"8.12.3",tabela_8123)
saveWorkbook(wb,"Tema08/Tema08.xlsx",overwrite = TRUE)