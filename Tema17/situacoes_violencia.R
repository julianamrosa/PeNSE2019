# Ajustes Tema 17 - situações de violência

# Ajuste para tabela 17.1.1

roubo <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P79[i])){
    roubo[i] <- NA
  }
  else if (pense$E01P79[i] %in% 3:4){
    roubo[i] <- 3
  }
  else{
    roubo[i] <- pense$E01P79[i]
  }
}

pense$ROUBO <- factor(roubo, c(1, 2, 3, 9),
                      ordered=T)

tiros <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P80[i])){
    tiros[i] <- NA
  }
  else if (pense$E01P80[i] %in% 3:4){
    tiros[i] <- 3
  }
  else{
    tiros[i] <- pense$E01P80[i]
  }
}

pense$TIROS <- factor(tiros, c(1, 2, 3, 9),
                      ordered=T)

venda_drogas <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P81[i])){
    venda_drogas[i] <- NA
  }
  else if (pense$E01P81[i] %in% 3:4){
    venda_drogas[i] <- 3
  }
  else{
    venda_drogas[i] <- pense$E01P81[i]
  }
}

pense$VENDA_DROGAS <- factor(venda_drogas, c(1, 2, 3, 9),
                      ordered=T)

agressao_fisica <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P82[i])){
    agressao_fisica[i] <- NA
  }
  else if (pense$E01P82[i] %in% 3:4){
    agressao_fisica[i] <- 3
  }
  else{
    agressao_fisica[i] <- pense$E01P82[i]
  }
}

pense$AGRESSAO_FISICA <- factor(agressao_fisica, c(1, 2, 3, 9),
                             ordered=T)

assassinato <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P83[i])){
    assassinato[i] <- NA
  }
  else if (pense$E01P83[i] %in% 3:4){
    assassinato[i] <- 3
  }
  else{
    assassinato[i] <- pense$E01P83[i]
  }
}

pense$ASSASSINATO <- factor(assassinato, c(1, 2, 3, 9),
                                ordered=T)

violencia_sexual <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P84[i])){
    violencia_sexual[i] <- NA
  }
  else if (pense$E01P84[i] %in% 3:4){
    violencia_sexual[i] <- 3
  }
  else{
    violencia_sexual[i] <- pense$E01P84[i]
  }
}

pense$VIOLENCIA_SEXUAL <- factor(violencia_sexual, c(1, 2, 3, 9),
                            ordered=T)

# Ajuste para tabela 17.3.1

roubo2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$ROUBO[i])){
    roubo2[i] <- NA
  }
  else if (pense$ROUBO[i] %in% 2:3){
    roubo2[i] <- 2
  }
  else{
    roubo2[i] <- pense$ROUBO[i]
  }
}

pense$ROUBO2 <- factor(roubo2, c(1, 2, 9),
                      ordered=T)

tiros2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$TIROS[i])){
    tiros2[i] <- NA
  }
  else if (pense$TIROS[i] %in% 2:3){
    tiros2[i] <- 2
  }
  else{
    tiros2[i] <- pense$TIROS[i]
  }
}

pense$TIROS2 <- factor(tiros2, c(1, 2, 9),
                      ordered=T)

venda_drogas2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$VENDA_DROGAS[i])){
    venda_drogas2[i] <- NA
  }
  else if (pense$VENDA_DROGAS[i] %in% 2:3){
    venda_drogas2[i] <- 2
  }
  else{
    venda_drogas2[i] <- pense$VENDA_DROGAS[i]
  }
}

pense$VENDA_DROGAS2 <- factor(venda_drogas2, c(1, 2, 9),
                             ordered=T)

agressao_fisica2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$AGRESSAO_FISICA[i])){
    agressao_fisica2[i] <- NA
  }
  else if (pense$AGRESSAO_FISICA[i] %in% 2:3){
    agressao_fisica2[i] <- 2
  }
  else{
    agressao_fisica2[i] <- pense$AGRESSAO_FISICA[i]
  }
}

pense$AGRESSAO_FISICA2 <- factor(agressao_fisica2, c(1, 2, 9),
                                ordered=T)

assassinato2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$ASSASSINATO[i])){
    assassinato2[i] <- NA
  }
  else if (pense$ASSASSINATO[i] %in% 2:3){
    assassinato2[i] <- 2
  }
  else{
    assassinato2[i] <- pense$ASSASSINATO[i]
  }
}

pense$ASSASSINATO2 <- factor(assassinato2, c(1, 2, 9),
                            ordered=T)

violencia_sexual2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$VIOLENCIA_SEXUAL[i])){
    violencia_sexual2[i] <- NA
  }
  else if (pense$VIOLENCIA_SEXUAL[i] %in% 2:3){
    violencia_sexual2[i] <- 2
  }
  else{
    violencia_sexual2[i] <- pense$VIOLENCIA_SEXUAL[i]
  }
}

pense$VIOLENCIA_SEXUAL2 <- factor(violencia_sexual2, c(1, 2, 9),
                                 ordered=T)

# Ajuste tabela 17.3.1

alguma_violencia <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$ROUBO2[i])){
    alguma_violencia[i] <- NA
  }
  else if (pense$ROUBO2[i]==2 | pense$TIROS2[i]==2
           | pense$VENDA_DROGAS2[i]==2 | pense$AGRESSAO_FISICA2[i]==2
           | pense$ASSASSINATO2[i]==2 | pense$VIOLENCIA_SEXUAL2[i]==2){
    alguma_violencia[i] <- 2
  }
  else if (pense$ROUBO2[i]==9 | pense$TIROS2[i]==9
           | pense$VENDA_DROGAS2[i]==9 | pense$AGRESSAO_FISICA2[i]==9
           | pense$ASSASSINATO2[i]==9 | pense$VIOLENCIA_SEXUAL2[i]==9){
    alguma_violencia[i] <- 9
  }
  else{
    alguma_violencia[i] <- 1
  }
}

pense$ALGUMA_VIOLENCIA <- factor(alguma_violencia, c(1, 2, 9),
                                 ordered=T)