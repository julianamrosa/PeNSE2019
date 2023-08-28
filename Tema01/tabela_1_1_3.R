## TABELA 1.1.2 ##

#vetores necessarios
caps_cods <- c(1100205, 1200401, 1302603, 1400100, 1501402, 1600303,
               1721000, 2111300, 2211001, 2304400, 2408102, 2507507,
               2611606, 2704302, 2800308, 2927408, 3106200, 3205309,
               3304557, 3550308, 4106902, 4205407, 4314902, 5002704,
               5103403, 5208707, 5300108)

caps_nomes <- c("Porto Velho", "Rio Branco", "Manaus", "Boa Vista",
                "Belém", "Macapá", "Palmas", "São Luís", "Teresina",
                "Fortaleza", "Natal", "João Pessoa", "Recife", "Maceió",
                "Aracaju", "Salvador", "Belo Horizonte", "Vitória",
                "Rio de Janeiro", "São Paulo", "Curitiba",
                "Florianópolis", "Porto Alegre", "Campo Grande",
                "Cuiabá", "Goiânia", "Brasília")

#olhando categorias
table(pense$MUNICIPIO_CAP) #capitais

## SEXO - por capital

tabela_113 <- data.frame()

for (i in caps_cods){
  tt1 <- estima_total(pense, subset(desenho_validos, MUNICIPIO_CAP==i),
                      "B01001A")
  tt1 <- tab_112(tt1, caps_nomes[which(caps_cods==i)], "Sexo")
  tabela_113 <- rbind(tabela_113, tt1)
}
#54 linhas

## DEP ADM- por capital

for (i in caps_cods){
  tt1 <- estima_total(pense, subset(desenho_validos, MUNICIPIO_CAP==i),
                      "DEP_ADMIN")
  tt1 <- tab_112(tt1, caps_nomes[which(caps_cods==i)], "Dep Adm")
  tabela_113 <- rbind(tabela_113, tt1)
}
#108 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.1.3")
writeData(wb,"1.1.3",tabela_113)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)