estima_total <- function(dados, desenhos, nomes_vars){
  variaveis <- list()
  for (i in 1:length(nomes_vars)){
    variaveis[[i]] <- as.factor(unlist(dados[nomes_vars[i]]))
  }
  tabela <- svytotal(~do.call(interaction, variaveis), desenhos,
                     na.rm=T)
  ic <- confint(tabela) #intervalos de confianca
  tabela <- as.data.frame(tabela)
  tabela <- cbind(tabela, ic) #juntando
  return(tabela)
}

estima_pct <- function(dados, desenhos, nomes_vars){
  variaveis <- list()
  for (i in 1:length(nomes_vars)){
    variaveis[[i]] <- as.factor(unlist(dados[nomes_vars[i]]))
  }
  tabela <- svymean(~do.call(interaction, variaveis), desenhos,
                    na.rm=T)
  ic <- confint(tabela) #intervalos de confianca
  tabela <- as.data.frame(tabela)
  tabela <- cbind(tabela, ic) #juntando
  return(tabela)
}

tab_2vars <- function(tt,          #tabela de estimativas
                    indicador,    #nome do indicador ("Total de escolares" ou "Percentual de escolares")
                    var1,         #nome da variavel na linha
                    valor_var1,   #valor da variavel na linha
                    var2,         #nome da variavel na coluna
                    valor_var2,   #valor da variavel na coluna
                    var3=NULL,
                    valor_var3=NULL,
                    var4=NULL,
                    valor_var4=NULL,
                    filtro){      #vetor numerico com posicoes das linhas que se quer manter
  
  #filtrando
  tt <- tt[filtro, ]
  
  #criando demais colunas
  tt$Variavel1 <- var1
  tt$Valor_Var1 <- valor_var1
  tt$Variavel2 <- var2
  tt$Valor_Var2 <- valor_var2
  tt$Indicador <- indicador
  
  #arrumando a tabela
  row.names(tt) <- NULL
  if (indicador=="Percentual de escolares"){
    tt <- tt%>%
      mutate(Estimativa=mean*100, Erro_Padrao=SE*100, LI=`2.5 %`*100, LS=`97.5 %`*100)
  }
  else{
    tt <- tt%>%
      rename(Estimativa=total, Erro_Padrao=SE, LI=`2.5 %`, LS=`97.5 %`)
  }
  tt <- tt%>%
    select(Indicador, Variavel1, Valor_Var1, Variavel2, Valor_Var2, Estimativa,
           Erro_Padrao, LI, LS)
  
  return(tt)
  
}

tab_3vars <- function(tt,           #tabela de estimativas
                     indicador,    #nome do indicador ("Total de escolares" ou "Percentual de escolares")
                     var1,         #nome da 1a variavel na linha
                     valor_var1,   #valor da 1a variavel na linha
                     var2,         #nome da 2a variavel na linha (ou 2a na coluna)
                     valor_var2,   #valor da 2a variavel na linha (ou 2a na coluna)
                     var3,         #nome da variavel na coluna
                     valor_var3,   #valor da variavel na coluna
                     var4=NULL,
                     valor_var4=NULL,
                     filtro){      #vetor numerico com posicoes das linhas que se quer manter
  
  #filtrando
  tt <- tt[filtro, ]
  
  #criando demais colunas
  tt$Variavel1 <- var1
  tt$Valor_Var1 <- valor_var1
  tt$Variavel2 <- var2
  tt$Valor_Var2 <- valor_var2
  tt$Variavel3 <- var3
  tt$Valor_Var3 <- valor_var3
  tt$Indicador <- indicador
  
  #arrumando a tabela
  row.names(tt) <- NULL
  if (indicador=="Percentual de escolares"){
    tt <- tt%>%
      mutate(Estimativa=mean*100, Erro_Padrao=SE*100, LI=`2.5 %`*100, LS=`97.5 %`*100)
  }
  else{
    tt <- tt%>%
      rename(Estimativa=total, Erro_Padrao=SE, LI=`2.5 %`, LS=`97.5 %`)
  }
  tt <- tt%>%
    select(Indicador, Variavel1, Valor_Var1, Variavel2, Valor_Var2, Variavel3, Valor_Var3, Estimativa,
           Erro_Padrao, LI, LS)
  
  return(tt)
  
}

tab_4vars <- function(tt,           #tabela de estimativas
                      indicador,    #nome do indicador ("Total de escolares" ou "Percentual de escolares")
                      var1,         #nome da 1a variavel na linha
                      valor_var1,   #valor da 1a variavel na linha
                      var2,         #nome da 2a variavel na linha (ou 2a na coluna)
                      valor_var2,   #valor da 2a variavel na linha (ou 2a na coluna)
                      var3,         #nome da variavel 1a na coluna
                      valor_var3,   #valor da variavel 1a na coluna
                      var4,         #nome da variavel 2a na coluna
                      valor_var4,   #valor da variavel 2a na coluna
                      filtro){      #vetor numerico com posicoes das linhas que se quer manter
  
  #filtrando
  tt <- tt[filtro, ]
  
  #criando demais colunas
  tt$Variavel1 <- var1
  tt$Valor_Var1 <- valor_var1
  tt$Variavel2 <- var2
  tt$Valor_Var2 <- valor_var2
  tt$Variavel3 <- var3
  tt$Valor_Var3 <- valor_var3
  tt$Variavel4 <- var4
  tt$Valor_Var4 <- valor_var4
  tt$Indicador <- indicador
  
  #arrumando a tabela
  row.names(tt) <- NULL
  if (indicador=="Percentual de escolares"){
    tt <- tt%>%
      mutate(Estimativa=mean*100, Erro_Padrao=SE*100, LI=`2.5 %`*100, LS=`97.5 %`*100)
  }
  else{
    tt <- tt%>%
      rename(Estimativa=total, Erro_Padrao=SE, LI=`2.5 %`, LS=`97.5 %`)
  }
  tt <- tt%>%
    select(Indicador, Variavel1, Valor_Var1, Variavel2, Valor_Var2, Variavel3,
           Valor_Var3, Variavel4, Valor_Var4, Estimativa,
           Erro_Padrao, LI, LS)
  
  return(tt)
  
}