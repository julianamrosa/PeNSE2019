
cinto_frente <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09006A1[i])){
    cinto_frente[i] <- NA
  }
  else if (pense$B09006A1[i] %in% 2:3){
    cinto_frente[i] <- 2
  }
  else{
    cinto_frente[i] <- pense$B09006A1[i]
  }
}

pense$CINTO_FRENTE <- factor(cinto_frente, c(-2, 1:2, 4:6, 9),
                             ordered=T)

cinto_tras <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09006A2[i])){
    cinto_tras[i] <- NA
  }
  else if (pense$B09006A2[i] %in% 2:3){
    cinto_tras[i] <- 2
  }
  else{
    cinto_tras[i] <- pense$B09006A2[i]
  }
}

pense$CINTO_TRAS <- factor(cinto_tras, c(-2, 1:2, 4:6, 9),
                             ordered=T)

cinto <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$CINTO_FRENTE[i])){
    cinto[i] <- NA
  }
  else if (pense$CINTO_FRENTE[i]==-2 | pense$CINTO_TRAS[i]==-2){
    cinto[i] <- -2
  }
  else if (pense$CINTO_FRENTE[i]==9 | pense$CINTO_TRAS[i]==9){
    cinto[i] <- 9
  }
  else if (pense$CINTO_FRENTE[i]==2 | pense$CINTO_TRAS[i]==2){
    cinto[i] <- 2
  }
  else{
    cinto[i] <- 1
  }
}

pense$CINTO <- factor(cinto, c(-2, 1:2, 9),
                           ordered=T)

## TABELA 9.1.x ##

table(pense$B09006A1) #freq usa cinto de segurança no banco da frente
table(pense$CINTO_FRENTE) #freq usa cinto de segurança no banco da frente (agregado)
table(pense$B09006A2) #freq usa cinto de segurança no banco de trás
table(pense$CINTO_TRAS) #freq usa cinto de segurança no banco da trás (agregado)
table(pense$CINTO) #nunca ou raramente usa cinto de segurança no banco da frente ou no de trás

tabelas_9_1x <- modelo5(var=pense$CINTO,
                         var_string="CINTO",
                         var_titulo="Frequência com que usa cinto de segurança no banco da frente ou no de trás",
                         valor="Nunca ou raramente",
                         filtragem=3)

tabela_9_11 <- tabelas_9_1x$tabela1
tabela_9_12 <- tabelas_9_1x$tabela2
tabela_9_13 <- tabelas_9_1x$tabela3

wb <- loadWorkbook("Tema9/Tema9.xlsx")
addWorksheet(wb,"9.1.1")
writeData(wb,"9.1.1",tabela_9_11)
saveWorkbook(wb,"Tema9/Tema9.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema9/Tema9.xlsx")
addWorksheet(wb,"9.1.2")
writeData(wb,"9.1.2",tabela_9_12)
saveWorkbook(wb,"Tema9/Tema9.xlsx",overwrite = TRUE)

wb <- loadWorkbook("Tema9/Tema9.xlsx")
addWorksheet(wb,"9.1.3")
writeData(wb,"9.1.3",tabela_9_13)
saveWorkbook(wb,"Tema10/Tema10.xlsx",overwrite = TRUE)



