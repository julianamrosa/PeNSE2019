## TABELA 1.2.2 ##

## ANO ESCOLAR - por capital

tabela_123 <- data.frame()

for (i in caps_cods){
  tt1 <- estima_pct(pense, subset(desenho_validos,
                                  MUNICIPIO_CAP==i), "B01021A")
  tt1 <- tab_122(tt1, caps_nomes[which(caps_cods==i)])
  tabela_123 <- rbind(tabela_123, tt1)
}
#162 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.2.3")
writeData(wb,"1.2.3",tabela_123)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)