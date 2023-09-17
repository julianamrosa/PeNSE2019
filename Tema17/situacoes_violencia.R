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
