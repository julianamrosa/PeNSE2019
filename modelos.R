## MODELO 1 ## idades e regioes nas linhas

modelo1 <- function(DESENHO, VAR_COL, NOME_VAR_COL, VETOR_COL,
                    VAR_EXTRA=NULL, VALOR_EXTRA=NULL, FILTRO,
                    fun_estima, fun_arruma, VAR_LIN=NULL,
                    NOM_VAR_LIN=NULL, VETOR_LIN=NULL){
  tabela <- data.frame()
  
  #Brasil
  tt1 <- eval(call(fun_estima, pense, DESENHO, VAR_COL))
  tt1 <- eval(call(fun_arruma, tt=tt1,
                   indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                   var1="Idade",
                   valor_var1="13 a 17 anos",
                   var2="Localização",
                   valor_var2="Brasil",
                   var3=NOME_VAR_COL,
                   valor_var3=VETOR_COL,
                   var4=VAR_EXTRA,
                   valor_var4=VALOR_EXTRA,
                   filtro=FILTRO))
  tabela <- rbind(tabela, tt1)
  
  for (i in 2:3){ #para idades
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, B01003==i), VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1="Idade",
                     valor_var1=faixa_etaria[i-1],
                     var2="Localização",
                     valor_var2="Brasil",
                     var3=NOME_VAR_COL,
                     valor_var3=VETOR_COL,
                     var4=VAR_EXTRA,
                     valor_var4=VALOR_EXTRA,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  
  #Regioes
  for (i in 1:5){
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, REGIAO==i), VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1="Idade",
                     valor_var1="13 a 17 anos",
                     var2="Localização",
                     valor_var2=regiao[i],
                     var3=NOME_VAR_COL,
                     valor_var3=VETOR_COL,
                     var4=VAR_EXTRA,
                     valor_var4=VALOR_EXTRA,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  
  for (i in 2:3){ #para idades
    for (j in 1:length(regiao)){ #para regioes
      tt1 <- eval(call(fun_estima, pense, subset(DESENHO, (B01003==i & REGIAO==j)), VAR_COL))
      tt1 <- eval(call(fun_arruma, tt=tt1,
                       indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                       var1="Idade",
                       valor_var1=faixa_etaria[i-1],
                       var2="Localização",
                       valor_var2=regiao[j],
                       var3=NOME_VAR_COL,
                       valor_var3=VETOR_COL,
                       var4=VAR_EXTRA,
                       valor_var4=VALOR_EXTRA,
                       filtro=FILTRO))
      tabela <- rbind(tabela, tt1)
    }
  }
  return(tabela)
}

## MODELO 1.2 ## dep_adm/sexo e regioes nas linhas

modelo1_2 <- function(DESENHO, VAR_COL, NOME_VAR_COL,
                            VETOR_COL, FILTRO, VAR_LIN,
                            NOM_VAR_LIN, VETOR_LIN, VAR_EXTRA=NULL,
                      VALOR_EXTRA=NULL, fun_estima, fun_arruma){ #VAR_LIN é da forma pense$var
  tabela <- data.frame()
  
  #Brasil
  for (i in 1:2){ #para Dep Adm/ sexo
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, (VAR_LIN==i)),
                     VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1=NOM_VAR_LIN,
                     valor_var1=VETOR_LIN[i],
                     var2="Localização",
                     valor_var2="Brasil",
                     var3=NOME_VAR_COL,
                     valor_var3=VETOR_COL,
                     var4=VAR_EXTRA,
                     valor_var4=VALOR_EXTRA,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  
  #Regioes
  for (i in 1:2){ #para Dep Adm/ sexo
    for (j in 1:length(regiao)){ #para regioes
      tt1 <- eval(call(fun_estima, pense, subset(DESENHO, (VAR_LIN==i & REGIAO==j)),
                       VAR_COL))
      tt1 <- eval(call(fun_arruma, tt=tt1,
                       indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                       var1=NOM_VAR_LIN,
                       valor_var1=VETOR_LIN[i],
                       var2="Localização",
                       valor_var2=regiao[j],
                       var3=NOME_VAR_COL,
                       valor_var3=VETOR_COL,
                       var4=VAR_EXTRA,
                       valor_var4=VALOR_EXTRA,
                       filtro=FILTRO))
      tabela <- rbind(tabela, tt1)
    }
  }
  return(tabela)
}

## MODELO 2 ## regioes e ufs nas linhas

modelo2 <- function(DESENHO, VAR_COL, NOME_VAR_COL, VETOR_COL,
                    VAR_EXTRA=NULL, VALOR_EXTRA=NULL, FILTRO,
                    fun_estima, fun_arruma, VAR_LIN=NULL,
                    NOM_VAR_LIN=NULL, VETOR_LIN=NULL){
  tabela <- data.frame()
  
  #Brasil
  tt1 <- eval(call(fun_estima, pense, DESENHO, VAR_COL))
  tt1 <- eval(call(fun_arruma, tt=tt1,
                   indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                   var1="Localização",
                   valor_var1="Brasil",
                   var2=NOME_VAR_COL,
                   valor_var2=VETOR_COL,
                   var3=NOM_VAR_LIN,
                   valor_var3=VETOR_LIN,
                   var4=VAR_EXTRA,
                   valor_var4=VALOR_EXTRA,
                   filtro=FILTRO))
  tabela <- rbind(tabela, tt1)
  
  #Regioes
  for (i in 1:5){
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, (REGIAO==i)),
                     VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1="Localização",
                     valor_var1=regiao[i],
                     var2=NOME_VAR_COL,
                     valor_var2=VETOR_COL,
                     var3=NOM_VAR_LIN,
                     valor_var3=VETOR_LIN,
                     var4=VAR_EXTRA,
                     valor_var4=VALOR_EXTRA,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  
  #UFs
  for (i in ufs_cod){
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, (UF==i)),
                     VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1="Localização",
                     valor_var1=ufs_nomes[which(ufs_cod==i)],
                     var2=NOME_VAR_COL,
                     valor_var2=VETOR_COL,
                     var3=NOM_VAR_LIN,
                     valor_var3=VETOR_LIN,
                     var4=VAR_EXTRA,
                     valor_var4=VALOR_EXTRA,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  return(tabela)
}


## MODELO 3 ## capitais nas linhas

modelo3 <- function(DESENHO, VAR_COL, NOME_VAR_COL, VETOR_COL,
                    VAR_EXTRA=NULL, VALOR_EXTRA=NULL, FILTRO,
                    fun_estima, fun_arruma, VAR_LIN=NULL,
                    NOM_VAR_LIN=NULL, VETOR_LIN=NULL){
  
  tabela <- data.frame()
  
  for (i in caps_cods){
    tt1 <- eval(call(fun_estima, pense, subset(DESENHO, MUNICIPIO_CAP==i),
                     VAR_COL))
    tt1 <- eval(call(fun_arruma, tt=tt1,
                     indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                     var1="Localização",
                     valor_var1=caps_nomes[which(caps_cods==i)],
                     var2=NOME_VAR_COL,
                     valor_var2=VETOR_COL,
                     var3=NOM_VAR_LIN,
                     valor_var3=VETOR_LIN,
                     filtro=FILTRO))
    tabela <- rbind(tabela, tt1)
  }
  return(tabela)
}

## MODELO 4 ## racas e sexo/dep adm nas linhas

modelo4 <- function(DESENHO, VAR_COL, NOME_VAR_COL,
                          VETOR_COL, FILTRO, VAR_LIN,
                          NOM_VAR_LIN, VETOR_LIN, VAR_EXTRA=NULL,
                          VALOR_EXTRA=NULL, fun_estima, fun_arruma){ #VAR_LIN é da forma pense$var
  
  tabela <- data.frame()
  
  #Racas
  for (i in 1:2){ #para varlin
    for (j in 1:length(racas)){ #para racas
      tt1 <- eval(call(fun_estima, pense, subset(DESENHO,
                                                 (VAR_LIN==i & pense$B01002==j)),
                       VAR_COL))
      tt1 <- eval(call(fun_arruma, tt=tt1,
                       indicador=ifelse(fun_estima=="estima_pct", "Percentual de escolares", "Total de escolares"),
                       var1=NOM_VAR_LIN,
                       valor_var1=VETOR_LIN[i],
                       var2="Raça/Cor",
                       valor_var2=racas[j],
                       var3=NOME_VAR_COL,
                       valor_var3=VETOR_COL,
                       filtro=FILTRO))
      tabela <- rbind(tabela, tt1)
    }
  }
  return(tabela)
}

## MODELO 5 ## sexo e dep adm nas colunas (além da outra var) --> já gera as 3 tabelas (modelos 1, 2 e 3)

modelo5 <- function(var, var_string, var_titulo, valor, filtragem){ #var é do tipo pense$
  
  tabela1 <- data.frame()
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Masculino")
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Feminino")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Pública")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Privada")
  
  tabela1 <- rbind(tabela1, tt)
  
  tabela2 <- data.frame()
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela2 <- rbind(tabela2, tt)
  
  tabela3 <- data.frame()
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela3 <- rbind(tabela3, tt)
  return(list("tabela1"=tabela1, "tabela2"=tabela2, "tabela3"=tabela3))
  
}

## MODELO 5_1 ## sexo e dep adm nas colunas (além da outra var) --> já gera as 3 tabelas (modelos 1, 2 e 3)
#igual ao 5, mas com um filtro extra

modelo5_1 <- function(var, var_string, var_titulo, valor, filtragem, var_filtro, valor_filtro){ #var é do tipo pense$
  
  tabela1 <- data.frame()
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==1
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Masculino")
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==2
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Feminino")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Pública")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Privada")
  
  tabela1 <- rbind(tabela1, tt)
  
  tabela2 <- data.frame()
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==1
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$B01001A==2
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela2 <- rbind(tabela2, tt)
  
  tabela3 <- data.frame()
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$B01001A==1
                                & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$B01001A==2
                                & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$DEP_ADMIN==1
                                & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2
                                                 & var_filtro!=valor_filtro)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela3 <- rbind(tabela3, tt)
  return(list("tabela1"=tabela1, "tabela2"=tabela2, "tabela3"=tabela3))
  
}



## MODELO 6 --> igual ao 5, mas inclui -1

modelo6 <- function(var, var_string, var_titulo, valor, filtragem){ #var é do tipo pense$
  
  tabela1 <- data.frame()
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Masculino")
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Sexo",
                VALOR_EXTRA="Feminino")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Pública")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Privada")
  
  tabela1 <- rbind(tabela1, tt)
  
  tabela2 <- data.frame()
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela2 <- rbind(tabela2, tt)
  
  tabela3 <- data.frame()
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2
                                & var!="Abandono"
                                & pense$B01001A==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Masculino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2
                                & var!="Abandono"
                                & pense$B01001A==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Sexo",
                VETOR_LIN="Feminino")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2
                                & var!="Abandono"
                                & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela3 <- rbind(tabela3, tt)
  return(list("tabela1"=tabela1, "tabela2"=tabela2, "tabela3"=tabela3))
  
}




## MODELO 7 ## dep adm nas colunas (além da outra var) --> já gera as 3 tabelas (modelos 1, 2 e 3)

modelo7 <- function(var, var_string, var_titulo, valor, filtragem){ #var é do tipo pense$
  
  tabela1 <- data.frame()
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Pública")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Privada")
  
  tabela1 <- rbind(tabela1, tt)
  
  tabela2 <- data.frame()
  
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela2 <- rbind(tabela2, tt)
  
  tabela3 <- data.frame()
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2 & var!=-1
                                & var!="Abandono"
                                & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos, (var!=-2 & var!=-1
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela3 <- rbind(tabela3, tt)
  return(list("tabela1"=tabela1, "tabela2"=tabela2, "tabela3"=tabela3))
  
}

## MODELO 8 ## dep adm nas colunas (além da outra var) --> já gera as 3 tabelas (modelos 1, 2 e 3)
#Não tira o -1!!!

modelo8 <- function(var, var_string, var_titulo, valor, filtragem){ #var é do tipo pense$
  
  tabela1 <- data.frame()
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Pública")
  
  tabela1 <- rbind(tabela1, tt)
  
  tt <- modelo1(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_4vars",
                VAR_EXTRA="Dependência Administrativa",
                VALOR_EXTRA="Privada")
  
  tabela1 <- rbind(tabela1, tt)
  
  tabela2 <- data.frame()
  
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela2 <- rbind(tabela2, tt)
  
  tt <- modelo2(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela2 <- rbind(tabela2, tt)
  
  tabela3 <- data.frame()
  
  tt <- modelo3(DESENHO=subset(desenho_validos,
                               (var!=-2
                                & var!="Abandono"
                                & pense$DEP_ADMIN==1)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Pública")
  
  tabela3 <- rbind(tabela3, tt)
  
  tt <- modelo3(DESENHO=subset(desenho_validos, (var!=-2
                                                 & var!="Abandono"
                                                 & pense$DEP_ADMIN==2)),
                VAR_COL=var_string,
                NOME_VAR_COL=var_titulo,
                VETOR_COL=valor,
                FILTRO=filtragem,
                fun_estima="estima_pct",
                fun_arruma="tab_3vars",
                NOM_VAR_LIN="Dependência Administrativa",
                VETOR_LIN="Privada")
  
  tabela3 <- rbind(tabela3, tt)
  return(list("tabela1"=tabela1, "tabela2"=tabela2, "tabela3"=tabela3))
  
}
