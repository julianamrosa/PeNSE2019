## TABELA 1.3.2 ##

## DEFININDO FUNCOES

tab_132 <- function(tt, local){
  #Filtrando: raca
  tt <- tt[2:6, ]
  
  #criando demais colunas
  tt$Localizacao <- rep(local, 5)
  tt$Valor_Var <- racas
  
  #arrumando a tabela
  tt <- arruma_tab2(tt, "Percentual de escolares", "Raça/ Cor")
  tt <- tt%>%
    select(Indicador, Localizacao, Variavel, Valor_Var, Percentual,
           Erro_Padrao, LI, LS)
  return(tt)
}

## RACA/COR - por regiao e uf

#Brasil
tt1 <- estima_pct(pense, desenho_validos, "B01002")
tt1 <- tab_132(tt1, "Brasil")
tabela_132 <- tt1
#5 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_pct(pense, subset(desenho_validos, REGIAO==i),
                    "B01002")
  tt1 <- tab_132(tt1, regiao[i])
  tabela_132 <- rbind(tabela_132, tt1)
}
#30 linhas

#UFs
for (i in ufs_cod){
  tt1 <- estima_pct(pense, subset(desenho_validos, UF==i),
                    "B01002")
  tt1 <- tab_132(tt1, ufs_nomes[which(ufs_cod==i)])
  tabela_132 <- rbind(tabela_132, tt1)
}
#165 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.2")
writeData(wb,"1.3.2",tabela_132)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)
