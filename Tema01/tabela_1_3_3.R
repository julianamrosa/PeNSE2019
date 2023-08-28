## TABELA 1.2.2 ##

## RACA/COR - por capital

tabela_133 <- data.frame()

for (i in caps_cods){
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  MUNICIPIO_CAP==i), "B01002")
  tt1 <- tab_132(tt1, caps_nomes[which(caps_cods==i)])
  tabela_133 <- rbind(tabela_133, tt1)
}
#135 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.3.3")
writeData(wb,"1.3.3",tabela_133)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)
