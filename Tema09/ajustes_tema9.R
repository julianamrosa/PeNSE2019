# 9.1.x #

#juntar 2 e 3 no B09006a1 e no B09006a2
#juntar B09006a1 e B09006a2

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

# 9.3.x #

#juntar 3, 4, 5 e 6 no B09007a

capacete <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09007A[i])){
    capacete[i] <- NA
  }
  else if (pense$B09007A[i] %in% 3:6){
    capacete[i] <- 3
  }
  else{
    capacete[i] <- pense$B09007A[i]
  }
}

pense$CAPACETE <- factor(capacete, c(-2, 1:3, 9),
                           ordered=T)

# 9.4.x #

#juntar 2:5 no B09008

dirigiu <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09008[i])){
    dirigiu[i] <- NA
  }
  else if (pense$B09008[i] %in% 2:5){
    dirigiu[i] <- 2
  }
  else{
    dirigiu[i] <- pense$B09008[i]
  }
}

pense$DIRIGIU <- factor(dirigiu, c(-2, 1:2, 9),
                         ordered=T)

# 9.5.x #

#juntar 2:5 no B09009

motorista_alcool <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09009[i])){
    motorista_alcool[i] <- NA
  }
  else if (pense$B09009[i] %in% 2:5){
    motorista_alcool[i] <- 2
  }
  else{
    motorista_alcool[i] <- pense$B09009[i]
  }
}

pense$MOTORISTA_ALCOOL <- factor(motorista_alcool, c(-2, 1:2, 9),
                        ordered=T)

# 9.6.x #

#juntar 2:5 no B09019

motorista_celular <- c()

for (i in 1:nrow(pense)){
  if(is.na(pense$B09019[i])){
    motorista_celular[i] <- NA
  }
  else if (pense$B09019[i] %in% 2:5){
    motorista_celular[i] <- 2
  }
  else{
    motorista_celular[i] <- pense$B09019[i]
  }
}

pense$MOTORISTA_CELULAR <- factor(motorista_celular, c(-2, 1:2, 9),
                                 ordered=T)

# 9.7.x --> já fiz

# 9.8.x #

#Repetir acima para B09002

faltou_medo_escola <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B09002[i])){
    faltou_medo_escola[i] <- NA
  }
  else if (pense$B09002[i] %in% 2:6){
    faltou_medo_escola[i] <- 2
  }
  else{
    faltou_medo_escola[i] <- pense$B09002[i]
  }
}

pense$FALTOU_MEDO_ESCOLA <- factor(faltou_medo_escola, c(-2, 1, 2, 9),
                            ordered=T)

# 9.9.x a 9.12.x #

#Direto

# 9.13.x #

#Direto, mas repetindo

# 9.14.x a 9.15.x#

#Direto

# 9.16.x #

#Juntar 2:4 no B09003a

agressao_pais <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B09003A[i])){
    agressao_pais[i] <- NA
  }
  else if (pense$B09003A[i] %in% 2:4){
    agressao_pais[i] <- 2
  }
  else{
    agressao_pais[i] <- pense$B09003A[i]
  }
}

pense$AGRESSAO_PAIS <- factor(agressao_pais, c(-2, 1, 2, 9),
                                   ordered=T)

# 9.17.x #

#Juntar 2:4 no B09010a1

agressao_outra <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B09010A1[i])){
    agressao_outra[i] <- NA
  }
  else if (pense$B09010A1[i] %in% 2:4){
    agressao_outra[i] <- 2
  }
  else{
    agressao_outra[i] <- pense$B09010A1[i]
  }
}

pense$AGRESSAO_OUTRA <- factor(agressao_outra, c(-2, 1, 2, 9),
                              ordered=T)

# 9.18.x #

#Direto, mas repetindo

# 9.19.x #

#Direto

# 9.20.x #

#Direto, mas repetindo

# 9.21.x #

#Direto

# 9.22.x #

#Direto, mas repetindo

# 9.23.x #

#Juntar 9:12 no B09018

idade_assedio <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B09018[i])){
    idade_assedio[i] <- NA
  }
  else if (pense$B09018[i] %in% 9:12){
    idade_assedio[i] <- 12
  }
  else{
    idade_assedio[i] <- pense$B09018[i]
  }
}

pense$IDADE_ASSEDIO <- factor(idade_assedio, c(-2, -1, 12:18, 99),
                               ordered=T)
