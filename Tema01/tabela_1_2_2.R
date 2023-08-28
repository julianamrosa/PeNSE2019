## TABELA 1.2.2 ##

## DEFININDO FUNCOES

tab_122 <- function(tt, local){
  #Filtrando: 7o a 1o ano
  tt <- tt[3:8, ]
  
  #criando demais colunas
  tt$Localizacao <- rep(local, 6)
  tt$Valor_Var <- c("7° Ano EF", "8° Ano EF", "9° Ano EF",
                    "1° Ano EM", "2° Ano EM", "3° Ano EM")
  
  #arrumando a tabela
  tt <- arruma_tab2(tt, "Percentual de escolares", "Ano Escolar")
  tt <- tt%>%
    select(Indicador, Localizacao, Variavel, Valor_Var, Percentual,
           Erro_Padrao, LI, LS)
  return(tt)
}

## ANO ESCOLAR - por regiao e uf

#Brasil
tt1 <- estima_pct(pense, desenho_validos, "B01021A")
tt1 <- tab_122(tt1, "Brasil")
tabela_122 <- tt1
#6 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_pct(pense, subset(desenho_validos, REGIAO==i),
                    "B01021A")
  tt1 <- tab_122(tt1, regiao[i])
  tabela_122 <- rbind(tabela_122, tt1)
}
#36 linhas

#UFs
for (i in ufs_cod){
  tt1 <- estima_pct(pense, subset(desenho_validos, UF==i),
                    "B01021A")
  tt1 <- tab_122(tt1, ufs_nomes[which(ufs_cod==i)])
  tabela_122 <- rbind(tabela_122, tt1)
}
#198 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.2")
writeData(wb,"1.2.2",tabela_122)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)