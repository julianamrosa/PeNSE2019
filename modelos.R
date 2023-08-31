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


#continuar a partir da 1.7.2
#HOJE: fechar Tema01

#Fazer Tema02 cronometrando (separar 5h para isso)
