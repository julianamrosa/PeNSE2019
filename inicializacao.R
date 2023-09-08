## CARREGANDO PACOTES ##
library(vroom)
library(survey)
library(dplyr)
library(writexl)
library(openxlsx)

## CARREGANDO DADOS ##

pense <- vroom("PENSE2019_MICRODADOS.csv")

## CALCULO USANDO PACOTE ##

# Ajuste necessario para calculo correto dos erros
options(survey.lonely.psu = "adjust")

# Populacao de interesse
pense$Alvo <- ifelse(((pense$B01003!=1 & pense$B01003!=4)
                      | is.na(pense$B01003)),
                     1, 0) #13 a 17 anos

#Ajuste para tabela 1.5.1
mora <- c()
for (i in 1:nrow(pense)){
  if (is.na(pense$B01006[i]) | is.na(pense$B01007[i])){
    mora[i] <- NA
  }
  else if (pense$B01006[i]==1 & pense$B01007[i]==1){
    mora[i] <- "Mãe e pai"
  }
  else if(pense$B01006[i]==1 & pense$B01007[i]==2){
    mora[i] <- "Só mãe"
  }
  else if(pense$B01006[i]==2 & pense$B01007[i]==1){
    mora[i] <- "Só pai"
  }
  else if(pense$B01006[i]==2 & pense$B01007[i]==2){
    mora[i] <- "Nem pai nem mãe"
  }
  else if(pense$B01006[i]==-2 | pense$B01007[i]==-2){
    mora[i] <- "Abandono"
  }
  else{
    mora[i] <- "Sem resposta"
  }
}
pense$MORA <- factor(mora, c("Mãe e pai", "Só mãe",
                             "Só pai", "Nem pai nem mãe",
                             "Abandono", "Sem resposta"),
                     ordered=T)

#Ajuste para tabela 1.6.1

residentes <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B01010A[i])){
    residentes[i] <- NA
  }
  else if (pense$B01010A[i]==1 | pense$B01010A[i]==2){
    residentes[i] <- "1 a 2"
  }
  else if (pense$B01010A[i]==3 | pense$B01010A[i]==4){
    residentes[i] <- "3 a 4"
  }
  else if (pense$B01010A[i]==5 | pense$B01010A[i]==6){
    residentes[i] <- "5 a 6"
  }
  else if (pense$B01010A[i]==7 | pense$B01010A[i]==8
           | pense$B01010A[i]==9 | pense$B01010A[i]==10){
    residentes[i] <- "7 ou mais"
  }
  else if (pense$B01010A[i]==-2){
    residentes[i] <- "Abandono"
  }
  else{
    residentes[i] <- "Sem resposta"
  }
}

pense$RESIDENTES <- factor(residentes, c("1 a 2", "3 a 4",
                                       "5 a 6", "7 ou mais",
                                       "Abandono", "Sem resposta"),
                          ordered=T)

# Ajuste para tabela 1.7.1

banheiro <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B01019A[i])){
    banheiro[i] <- NA
  }
  else if (pense$B01019A[i]==-2){
    banheiro[i] <- "Abandono"
  }
  else if (pense$B01019A[i]==9){
    banheiro[i] <- "Sem resposta"
  }
  else if (pense$B01019A[i]==1){
    banheiro[i] <- "Não"
  }
  else{
    banheiro[i] <- "Sim"
  }
}

pense$BANHEIRO <- factor(banheiro, c("Abandono", "Sem resposta", "Sim", "Não"),
                           ordered=T)

# Ajuste para tabela 1.8.1

instrucao_mae <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B01008B[i])){
    instrucao_mae[i] <- NA
  }
  else if (pense$B01008B[i]==-2){
    instrucao_mae[i] <- "Abandono"
  }
  else if (pense$B01008B[i]==1 | pense$B01008B[i]==2){
    instrucao_mae[i] <- "Nenhuma instrução ou EF incompleto"
  }
  else if (pense$B01008B[i]==3| pense$B01008B[i]==4){
    instrucao_mae[i] <- "EF completo ou EM incompleto"
  }
  else if (pense$B01008B[i]==5 | pense$B01008B[i]==6){
    instrucao_mae[i] <- "EM completo ou ES incompleto"
  }
  else if (pense$B01008B[i]==7){
    instrucao_mae[i] <- "ES completo"
  }
  else if (pense$B01008B[i]==8){
    instrucao_mae[i] <- "Não sei"
  }
  else{
    instrucao_mae[i] <- "Sem resposta"
  }
}

pense$INSTRUCAO_MAE <- factor(instrucao_mae, c("Abandono", "Nenhuma instrução ou EF incompleto",
                                          "EF completo ou EM incompleto",
                                          "EM completo ou ES incompleto",
                                          "ES completo", "Não sei",
                                          "Sem resposta"),
                         ordered=T)

# Ajuste para tabela 2.1.1

faltou <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B07001[i])){
    faltou[i] <- NA
  }
  else if (pense$B07001[i]==-2){
    faltou[i] <- "Abandono"
  }
  else if (pense$B07001[i]==1){
    faltou[i] <- "Não"
  }
  else if (pense$B07001[i]==9){
    faltou[i] <- "Sem resposta"
  }
  else{
    faltou[i] <- "Sim"
  }
}

pense$FALTOU <- factor(faltou, c("Abandono", "Sim", "Não", "Sem resposta"),
                              ordered=T)

# Ajuste para tabela 2.2.1

sabe <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B07002[i])){
    sabe[i] <- NA
  }
  else if (pense$B07002[i]==-2){
    sabe[i] <- "Abandono"
  }
  else if (pense$B07002[i]==1 | pense$B07002[i]==2){
    sabe[i] <- "Não"
  }
  else if (pense$B07002[i]==9){
    sabe[i] <- "Sem resposta"
  }
  else{
    sabe[i] <- "Sim"
  }
}

pense$SABE <- factor(sabe, c("Abandono", "Sim", "Não", "Sem resposta"),
                       ordered=T)

# Ajuste para tabela 2.3.1

entende <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B07004[i])){
    entende[i] <- NA
  }
  else if (pense$B07004[i]==-2){
    entende[i] <- "Abandono"
  }
  else if (pense$B07004[i]==1 | pense$B07004[i]==2){
    entende[i] <- "Não"
  }
  else if (pense$B07004[i]==9){
    entende[i] <- "Sem resposta"
  }
  else{
    entende[i] <- "Sim"
  }
}

pense$ENTENDE <- factor(entende, c("Abandono", "Sim", "Não", "Sem resposta"),
                     ordered=T)

# Ajuste para tabela 2.4.1

prestativos <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B07006[i])){
    prestativos[i] <- NA
  }
  else if (pense$B07006[i]==-2){
    prestativos[i] <- "Abandono"
  }
  else if (pense$B07006[i]==1){
    prestativos[i] <- "Nunca"
  }
  else if (pense$B07006[i]==2 | pense$B07006[i]==3){
    prestativos[i] <- "Raramente ou às vezes"
  }
  else if (pense$B07006[i]==4 | pense$B07006[i]==5){
    prestativos[i] <- "Quase sempre ou sempre"
  }
  else{
    prestativos[i] <- "Sem Resposta"
  }
}

pense$PRESTATIVOS <- factor(prestativos, c("Abandono", "Nunca",
                                           "Raramente ou às vezes",
                                           "Quase sempre ou sempre",
                                           "Sem Resposta"),
                        ordered=T)

# Ajuste para tabela 3.2.1

bebidas <- c()

for (i in 1:nrow(pense)){
  c <- 0
  if (is.na(pense$B02028[i])){
    bebidas[i] <- NA
  }
  else if (pense$B02028[i]==-2 & pense$B02029[i]==-2
           & pense$B02030[i]==-2 & pense$B02031[i]==-2
           & pense$B02032[i]==-2){
    bebidas[i] <- -2
  }
  else{
    if (pense$B02028[i]==1){
      c <- c+1
    }
    if (pense$B02029[i]==1){
      c <- c+1
    }
    if (pense$B02030[i]==1){
      c <- c+1
    }
    if (pense$B02031[i]==1){
      c <- c+1
    }
    if (pense$B02032[i]==1){
      c <- c+1
    }
    bebidas[i] <- c
  }
}

Bebidas <- c()

for (i in 1:nrow(pense)){
  if (is.na(bebidas[i])){
    Bebidas[i] <- NA
  }
  else if (bebidas[i]==0){
    Bebidas[i] <- "Nenhuma bebida"
  }
  else if (bebidas[i]==1){
    Bebidas[i] <- "1 bebida"
  }
  else if (bebidas[i]>=2){
    Bebidas[i] <- "2 bebidas ou mais"
  }
  else{
    Bebidas[i] <- "Abandono"
  }
}

pense$BEBIDAS <- factor(Bebidas, c("Abandono", "Nenhuma bebida",
                                   "1 bebida", "2 bebidas ou mais"),
                            ordered=T)

# Ajuste para tabela 3.4.1

comidas_ind <- c()

for (i in 1:nrow(pense)){
  c <- 0
  if (is.na(pense$B02033[i])){
    comidas_ind[i] <- NA
  }
  else if (pense$B02033[i]==-2 & pense$B02034[i]==-2
           & pense$B02035[i]==-2){
    comidas_ind[i] <- -2
  }
  else{
    if (pense$B02033[i]==1){
      c <- c+1
    }
    if (pense$B02034[i]==1){
      c <- c+1
    }
    if (pense$B02035[i]==1){
      c <- c+1
    }
    comidas_ind[i] <- c
  }
}

Comidas_Ind <- c()

for (i in 1:nrow(pense)){
  if (is.na(comidas_ind[i])){
    Comidas_Ind[i] <- NA
  }
  else if (comidas_ind[i]==0){
    Comidas_Ind[i] <- "Nenhum alimento"
  }
  else if (comidas_ind[i]==1){
    Comidas_Ind[i] <- "1 alimento"
  }
  else if (comidas_ind[i]>=2){
    Comidas_Ind[i] <- "2 alimentos ou mais"
  }
  else{
    Comidas_Ind[i] <- "Abandono"
  }
}

pense$COMIDAS_IND <- factor(Comidas_Ind, c("Abandono", "Nenhum alimento",
                                   "1 alimento", "2 alimentos ou mais"),
                        ordered=T)

# Ajuste para tabela 3.6.1

comidas_ind2 <- c()

for (i in 1:nrow(pense)){
  c <- 0
  if (is.na(pense$B02036[i])){
    comidas_ind2[i] <- NA
  }
  else if (pense$B02036[i]==-2 & pense$B02037[i]==-2
           & pense$B02038[i]==-2 & pense$B02039[i]==-2
           & pense$B02040[i]==-2){
    comidas_ind2[i] <- -2
  }
  else{
    if (pense$B02036[i]==1){
      c <- c+1
    }
    if (pense$B02037[i]==1){
      c <- c+1
    }
    if (pense$B02038[i]==1){
      c <- c+1
    }
    if (pense$B02039[i]==1){
      c <- c+1
    }
    if (pense$B02040[i]==1){
      c <- c+1
    }
    comidas_ind2[i] <- c
  }
}

Comidas_Ind2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(comidas_ind2[i])){
    Comidas_Ind2[i] <- NA
  }
  else if (comidas_ind2[i]==0){
    Comidas_Ind2[i] <- "Nenhum alimento"
  }
  else if (comidas_ind2[i]==1){
    Comidas_Ind2[i] <- "1 alimento"
  }
  else if (comidas_ind2[i]>=2){
    Comidas_Ind2[i] <- "2 alimentos ou mais"
  }
  else{
    Comidas_Ind2[i] <- "Abandono"
  }
}

pense$SALGADOS_IND <- factor(Comidas_Ind2, c("Abandono", "Nenhum alimento",
                                           "1 alimento", "2 alimentos ou mais"),
                            ordered=T)

# Ajuste para a tabela 3.7.1

consumiu <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$COMIDAS_IND[i])){
    consumiu[i] <- NA
  }
  else if (pense$COMIDAS_IND[i]=="Nenhum alimento"
           & pense$SALGADOS_IND[i]=="Nenhum alimento"
           & pense$BEBIDAS[i]=="Nenhuma bebida"){
    consumiu[i] <- "Não"
  }
  else if (pense$COMIDAS_IND[i]=="Abandono"
           & pense$SALGADOS_IND[i]=="Abandono"
           & pense$BEBIDAS[i]=="Abandono"){
    consumiu[i] <- "Abandono"
  }
  else{
    consumiu[i] <- "Sim"
  }
}

pense$CONSUMIU <- factor(consumiu, c("Abandono", "Sim", "Não"),
                             ordered=T)

# Ajuste para a tabela 3.9.1

feijao <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02001[i])){
    feijao[i] <- NA
  }
  else if (pense$B02001[i]==6 | pense$B02001[i]==7
           | pense$B02001[i]==8){
    feijao[i] <- "5 dias ou mais"
  }
  else if (pense$B02001[i]==1){
    feijao[i] <- "Nenhum dia"
  }
  else if (pense$B02001[i]==2){
    feijao[i] <- "1 dia"
  }
  else if (pense$B02001[i]==3){
    feijao[i] <- "2 dias"
  }
  else if (pense$B02001[i]==4){
    feijao[i] <- "3 dias"
  }
  else if (pense$B02001[i]==5){
    feijao[i] <- "4 dias"
  }
  else if (pense$B02001[i]==-2){
    feijao[i] <- "Abandono"
  }
  else{
    feijao[i] <- "Sem resposta"
  }
}

pense$FEIJAO <- factor(feijao, c("Abandono", "Nenhum dia",
                                 "1 dia", "2 dias", "3 dias",
                                 "4 dias", "5 dias ou mais",
                                 "Sem resposta"),
                       ordered=T)

# Ajuste para a tabela 3.11.1

legumes <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02004B[i])){
    legumes[i] <- NA
  }
  else if (pense$B02004B[i]==6 | pense$B02004B[i]==7
           | pense$B02004B[i]==8){
    legumes[i] <- "5 dias ou mais"
  }
  else if (pense$B02004B[i]==1){
    legumes[i] <- "Nenhum dia"
  }
  else if (pense$B02004B[i]==2){
    legumes[i] <- "1 dia"
  }
  else if (pense$B02004B[i]==3){
    legumes[i] <- "2 dias"
  }
  else if (pense$B02004B[i]==4){
    legumes[i] <- "3 dias"
  }
  else if (pense$B02004B[i]==5){
    legumes[i] <- "4 dias"
  }
  else if (pense$B02004B[i]==-2){
    legumes[i] <- "Abandono"
  }
  else{
    legumes[i] <- "Sem resposta"
  }
}

pense$LEGUMES <- factor(legumes, c("Abandono", "Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais",
                                   "Sem resposta"),
                        ordered=T)

# Ajuste para a tabela 3.13.1

guloseimas <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02010A[i])){
    guloseimas[i] <- NA
  }
  else if (pense$B02010A[i]==6 | pense$B02010A[i]==7
           | pense$B02010A[i]==8){
    guloseimas[i] <- "5 dias ou mais"
  }
  else if (pense$B02010A[i]==1){
    guloseimas[i] <- "Nenhum dia"
  }
  else if (pense$B02010A[i]==2){
    guloseimas[i] <- "1 dia"
  }
  else if (pense$B02010A[i]==3){
    guloseimas[i] <- "2 dias"
  }
  else if (pense$B02010A[i]==4){
    guloseimas[i] <- "3 dias"
  }
  else if (pense$B02010A[i]==5){
    guloseimas[i] <- "4 dias"
  }
  else if (pense$B02010A[i]==-2){
    guloseimas[i] <- "Abandono"
  }
  else{
    guloseimas[i] <- "Sem resposta"
  }
}

pense$GULOSEIMAS <- factor(guloseimas, c("Abandono", "Nenhum dia",
                                   "1 dia", "2 dias", "3 dias",
                                   "4 dias", "5 dias ou mais",
                                   "Sem resposta"),
                        ordered=T)

# Ajuste para a tabela 3.15.1

frutas <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02011[i])){
    frutas[i] <- NA
  }
  else if (pense$B02011[i]==6 | pense$B02011[i]==7
           | pense$B02011[i]==8){
    frutas[i] <- "5 dias ou mais"
  }
  else if (pense$B02011[i]==1){
    frutas[i] <- "Nenhum dia"
  }
  else if (pense$B02011[i]==2){
    frutas[i] <- "1 dia"
  }
  else if (pense$B02011[i]==3){
    frutas[i] <- "2 dias"
  }
  else if (pense$B02011[i]==4){
    frutas[i] <- "3 dias"
  }
  else if (pense$B02011[i]==5){
    frutas[i] <- "4 dias"
  }
  else if (pense$B02011[i]==-2){
    frutas[i] <- "Abandono"
  }
  else{
    frutas[i] <- "Sem resposta"
  }
}

pense$FRUTAS <- factor(frutas, c("Abandono", "Nenhum dia",
                                         "1 dia", "2 dias", "3 dias",
                                         "4 dias", "5 dias ou mais",
                                         "Sem resposta"),
                           ordered=T)

# Ajuste para a tabela 3.17.1

refri <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02013[i])){
    refri[i] <- NA
  }
  else if (pense$B02013[i]==6 | pense$B02013[i]==7
           | pense$B02013[i]==8){
    refri[i] <- "5 dias ou mais"
  }
  else if (pense$B02013[i]==1){
    refri[i] <- "Nenhum dia"
  }
  else if (pense$B02013[i]==2){
    refri[i] <- "1 dia"
  }
  else if (pense$B02013[i]==3){
    refri[i] <- "2 dias"
  }
  else if (pense$B02013[i]==4){
    refri[i] <- "3 dias"
  }
  else if (pense$B02013[i]==5){
    refri[i] <- "4 dias"
  }
  else if (pense$B02013[i]==-2){
    refri[i] <- "Abandono"
  }
  else{
    refri[i] <- "Sem resposta"
  }
}

pense$REFRI <- factor(refri, c("Abandono", "Nenhum dia",
                                 "1 dia", "2 dias", "3 dias",
                                 "4 dias", "5 dias ou mais",
                                 "Sem resposta"),
                       ordered=T)

# Ajuste para a tabela 3.19.1

fastfood <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02023A[i])){
    fastfood[i] <- NA
  }
  else if (pense$B02023A[i]==6 | pense$B02023A[i]==7
           | pense$B02023A[i]==8){
    fastfood[i] <- "5 dias ou mais"
  }
  else if (pense$B02023A[i]==1){
    fastfood[i] <- "Nenhum dia"
  }
  else if (pense$B02023A[i]==2){
    fastfood[i] <- "1 dia"
  }
  else if (pense$B02023A[i]==3){
    fastfood[i] <- "2 dias"
  }
  else if (pense$B02023A[i]==4){
    fastfood[i] <- "3 dias"
  }
  else if (pense$B02023A[i]==5){
    fastfood[i] <- "4 dias"
  }
  else if (pense$B02023A[i]==-2){
    fastfood[i] <- "Abandono"
  }
  else{
    fastfood[i] <- "Sem resposta"
  }
}

pense$FASTFOOD <- factor(fastfood, c("Abandono", "Nenhum dia",
                               "1 dia", "2 dias", "3 dias",
                               "4 dias", "5 dias ou mais",
                               "Sem resposta"),
                      ordered=T)

# Ajuste para a tabela 3.21.1

cafe <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02019A[i])){
    cafe[i] <- NA
  }
  else if (pense$B02019A[i]==-2){
    cafe[i] <- "Abandono"
  }
  else if (pense$B02019A[i]==9){
    cafe[i] <- "Sem resposta"
  }
  else if (pense$B02019A[i]==1 | pense$B02019A[i]==2){
    cafe[i] <- "5 dias ou mais"
  }
  else{
    cafe[i] <- "Menos de 5 dias"
  }
}

pense$CAFE <- factor(cafe, c("Abandono", "Menos de 5 dias", "5 dias ou mais",
                                     "Sem resposta"),
                         ordered=T)

# Ajuste para a tabela 3.22.1

jantar <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02017A[i])){
    jantar[i] <- NA
  }
  else if (pense$B02017A[i]==-2){
    jantar[i] <- "Abandono"
  }
  else if (pense$B02017A[i]==9){
    jantar[i] <- "Sem resposta"
  }
  else if (pense$B02017A[i]==1 | pense$B02017A[i]==2){
    jantar[i] <- "5 dias ou mais"
  }
  else{
    jantar[i] <- "Menos de 5 dias"
  }
}

pense$JANTAR <- factor(jantar, c("Abandono", "Menos de 5 dias", "5 dias ou mais",
                             "Sem resposta"),
                     ordered=T)

# Ajuste para a tabela 3.23.1

tv <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02018B[i])){
    tv[i] <- NA
  }
  else if (pense$B02018B[i]==-2){
    tv[i] <- "Abandono"
  }
  else if (pense$B02018B[i]==9){
    tv[i] <- "Sem resposta"
  }
  else if (pense$B02018B[i]==5){
    tv[i] <- "Não"
  }
  else{
    tv[i] <- "Sim"
  }
}

pense$TV <- factor(tv, c("Abandono", "Sim", "Não",
                                 "Sem resposta"),
                       ordered=T)

# Ajuste para a tabela 3.25.1

merenda <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02020B[i])){
    merenda[i] <- NA
  }
  else if (pense$B02020B[i]==-2 | pense$B02020B[i]==-1){
    merenda[i] <- "Abandono"
  }
  else if (pense$B02020B[i]==9){
    merenda[i] <- "Sem resposta"
  }
  else if (pense$B02020B[i]==5){
    merenda[i] <- "Não"
  }
  else{
    merenda[i] <- "Sim"
  }
}

pense$MERENDA <- factor(merenda, c("Abandono", "Sim", "Não",
                         "Sem resposta"),
                   ordered=T)

# Ajuste para a tabela 3.26.1

merenda2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02020B[i])){
    merenda2[i] <- NA
  }
  else if (pense$B02020B[i]==-2 | pense$B02020B[i]==-1){
    merenda2[i] <- "Abandono"
  }
  else if (pense$B02020B[i]==9){
    merenda2[i] <- "Sem resposta"
  }
  else if (pense$B02020B[i]==4 | pense$B02020B[i]==5){
    merenda2[i] <- "Não ou raramente"
  }
  else if (pense$B02020B[i]==1 | pense$B02020B[i]==2){
    merenda2[i] <- "3 dias ou mais"
  }
  else{
    merenda2[i] <- "1 ou 2 dias"
  }
}

pense$MERENDA2 <- factor(merenda2, c("Abandono", "Não ou raramente", "1 ou 2 dias",
                                  "3 dias ou mais",  "Sem resposta"),
                        ordered=T)

# Ajuste para a tabela 3.27.1

cantina <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02041[i])){
    cantina[i] <- NA
  }
  else if (pense$B02041[i]==-2){
    cantina[i] <- "Abandono"
  }
  else if (pense$B02041[i]==9){
    cantina[i] <- "Sem resposta"
  }
  else if (pense$B02041[i]==5 | pense$B02041[i]==6){
    cantina[i] <- "Não"
  }
  else{
    cantina[i] <- "Sim"
  }
}

pense$CANTINA <- factor(cantina, c("Abandono", "Sim", "Não",  "Sem resposta"),
                         ordered=T)

# Ajuste para a tabela 3.28.1

cantina2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02041[i])){
    cantina2[i] <- NA
  }
  else if (pense$B02041[i]==-2){
    cantina2[i] <- "Abandono"
  }
  else if (pense$B02041[i]==9){
    cantina2[i] <- "Sem resposta"
  }
  else if (pense$B02041[i]==6){
    cantina2[i] <- "Não tem cantina"
  }
  else if (pense$B02041[i]==4 | pense$B02041[i]==5){
    cantina2[i] <- "Não ou raramente"
  }
  else if (pense$B02041[i]==1 | pense$B02041[i]==2){
    cantina2[i] <- "3 dias ou mais"
  }
  else{
    cantina2[i] <- "1 ou 2 dias"
  }
}

pense$CANTINA2 <- factor(cantina2, c("Abandono", "Não ou raramente", "1 ou 2 dias",
                                     "3 dias ou mais", "Não tem cantina",  "Sem resposta"),
                         ordered=T)

# Ajuste para a tabela 3.29.1

ponto_alt <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02042[i])){
    ponto_alt[i] <- NA
  }
  else if (pense$B02042[i]==-2){
    ponto_alt[i] <- "Abandono"
  }
  else if (pense$B02042[i]==9){
    ponto_alt[i] <- "Sem resposta"
  }
  else if (pense$B02042[i]==5 | pense$B02042[i]==6){
    ponto_alt[i] <- "Não"
  }
  else{
    ponto_alt[i] <- "Sim"
  }
}

pense$PONTO_ALT <- factor(ponto_alt, c("Abandono", "Sim", "Não",  "Sem resposta"),
                        ordered=T)

# Ajuste para a tabela 3.30.1

ponto_alt2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B02042[i])){
    ponto_alt2[i] <- NA
  }
  else if (pense$B02042[i]==-2){
    ponto_alt2[i] <- "Abandono"
  }
  else if (pense$B02042[i]==9){
    ponto_alt2[i] <- "Sem resposta"
  }
  else if (pense$B02042[i]==6){
    ponto_alt2[i] <- "Não tem ponto alternativo"
  }
  else if (pense$B02042[i]==4 | pense$B02042[i]==5){
    ponto_alt2[i] <- "Não ou raramente"
  }
  else if (pense$B02042[i]==1 | pense$B02042[i]==2){
    ponto_alt2[i] <- "3 dias ou mais"
  }
  else{
    ponto_alt2[i] <- "1 ou 2 dias"
  }
}

pense$PONTO_ALT2 <- factor(ponto_alt2, c("Abandono", "Não ou raramente", "1 ou 2 dias",
                                     "3 dias ou mais", "Não tem ponto alternativo",  "Sem resposta"),
                         ordered=T)

# Ajuste para a tabela 4.1.1

ed_fisica <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03003A[i])){
    ed_fisica[i] <- NA
  }
  else if (pense$B03003A[i]==-2 | pense$B03003A[i]==9){
    ed_fisica[i] <- pense$B03003A[i]
  }
  else if (pense$B03003A[i]==7 | pense$B03003A[i]==8){
    ed_fisica[i] <- 5
  }
  else{
    ed_fisica[i] <- pense$B03003A[i]-1
  }
}

pense$ED_FISICA <- factor(ed_fisica, c(-2, 0:5, 9),
                           ordered=T)

# Ajuste para a tabela 4.4.1

ed_fisica2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03003A[i])){
    ed_fisica2[i] <- NA
  }
  else if (pense$B03003A[i]==-2 | pense$B03003A[i]==9){
    ed_fisica2[i] <- pense$B03003A[i]
  }
  else if (pense$B03003A[i] %in% 3:8){
    ed_fisica2[i] <- 2
  }
  else{
    ed_fisica2[i] <- pense$B03003A[i]-1
  }
}

pense$ED_FISICA2 <- factor(ed_fisica2, c(-2, 0:2, 9),
                          ordered=T)

# Ajuste para a tabela 4.8.1

televisao <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03009B[i])){
    televisao[i] <- NA
  }
  else if (pense$B03009B[i]==-2 | pense$B03009B[i]==99
           | pense$B03009B[i] %in% 1:3){
    televisao[i] <- pense$B03009B[i]
  }
  else{
    televisao[i] <- 4
  }
}

pense$TELEVISAO <- factor(televisao, c(-2, 1:4, 99),
                           ordered=T)

# Ajuste para a tabela 4.9.1

sentado <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03010B[i])){
    sentado[i] <- NA
  }
  else if (pense$B03010B[i]==-2 | pense$B03010B[i]==99
           | pense$B03010B[i] %in% 1:3){
    sentado[i] <- pense$B03010B[i]
  }
  else{
    sentado[i] <- 4
  }
}

pense$SENTADO <- factor(sentado, c(-2, 1:4, 99),
                          ordered=T)

# Ajuste para a tabela 5.2.1

cigarro <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B04002A[i])){
    cigarro[i] <- NA
  }
  else if (pense$B04002A[i] %in% 9:13){
    cigarro[i] <- 13
  }
  else{
    cigarro[i] <- pense$B04002A[i]
  }
}

pense$CIGARRO <- factor(cigarro, c(-2, -1, 13:18, 99),
                        ordered=T)


# Ajuste para a tabela 5.3.1

fumou_30dias <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B04003[i])){
    fumou_30dias[i] <- NA
  }
  else if (pense$B04003[i] %in% 2:7){
    fumou_30dias[i] <- 2
  }
  else{
    fumou_30dias[i] <- pense$B04003[i]
  }
}

pense$FUMOU_30DIAS <- factor(fumou_30dias, c(-2, -1, 1:2, 9),
                        ordered=T)

# Ajuste para a tabela 5.11.1

responsavel_fuma <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B04006B[i])){
    responsavel_fuma[i] <- NA
  }
  else if (pense$B04006B[i] %in% 2:4){
    responsavel_fuma[i] <- 2
  }
  else{
    responsavel_fuma[i] <- pense$B04006B[i]
  }
}

pense$RESPONSAVEL_FUMA <- factor(responsavel_fuma, c(-2, -1, 1:2, 5, 9),
                             ordered=T)

# Ajuste para a tabela 5.12.1

fumaram_casa <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B04005A[i])){
    fumaram_casa[i] <- NA
  }
  else if (pense$B04005A[i] %in% 2:5){
    fumaram_casa[i] <- 2
  }
  else{
    fumaram_casa[i] <- pense$B04005A[i]
  }
}

pense$FUMARAM_CASA <- factor(fumaram_casa, c(-2, -1, 1:2, 9),
                                 ordered=T)

# Objeto inicial
desenho_pre <- svydesign(
  ids = ~ESCOLA,
  strata = ~ESTRATO,
  weights = ~PESO_INICIAL,
  nest = TRUE,
  data = pense)

# Aplica a pos-estratificacao -- este é o objeto final
desenho_pense <- postStratify(desenho_pre,
                              strata = ~POSEST,
                              population = pense[,
                                                 c("POSEST",
                                                   "TOTAIS_POSEST")])

# O dominio de estimacao é IND_EXPANSAO = 1, entao ja pode deixar criado o objeto
desenho_validos <- subset(desenho_pense, IND_EXPANSAO == 1)
desenho_validos <- subset(desenho_validos, Alvo==1) #tira <13 e >=18 anos

# Exemplo de calculo dos totais por UF
totais_UF <- svytotal(~as.factor(UF), desenho_validos)

#vetores necessarios
faixa_etaria <- c("13 a 15 anos", "16 e 17 anos")
regiao <- c("Norte", "Nordeste", "Sudeste", "Sul",
            "Centro-Oeste")

ufs_cod <- c(11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 27,
             28, 29, 31, 32, 33, 35, 41, 42, 43, 50, 51, 52, 53)
ufs_nomes <- c("Rondônia", "Acre", "Amazonas", "Roraima", "Pará",
               "Amapá", "Tocantins", "Maranhão", "Piauí",
               "Ceará", "Rio Grande do Norte", "Paraíba",
               "Pernambuco", "Alagoas", "Sergipe", "Bahia",
               "Minas Gerais", "Espírito Santo", "Rio de Janeiro",
               "São Paulo","Paraná", "Santa Catarina",
               "Rio Grande do Sul", "Mato Grosso do Sul",
               "Mato Grosso",  "Goiás", "Distrito Federal")

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

faixa_etaria <- c("13 a 15 anos", "16 e 17 anos")

ano_escolar <- c("7° Ano EF", "8° Ano EF", "9° Ano EF",
                 "1° Ano EM", "2° Ano EM", "3° Ano EM")

racas <- c("Branca", "Preta", "Amarela", "Parda", "Indígena")

pretensao <- c("Somente continuar estudando", "Somente trabalhar",
               "Continuar estudando e trabalhar",
               "Seguir outro plano", "Não sei")

mora <- c("Mãe e pai", "Só mãe", "Só pai", "Nem pai nem mãe")

residentes <- c("1 a 2", "3 a 4",
                "5 a 6", "7 ou mais")

instrucao_mae <- c("Nenhuma instrução ou EF incompleto",
                   "EF completo ou EM incompleto",
                   "EM completo ou ES incompleto",
                   "ES completo", "Não sei")

prestativos <- c("Nunca",
                 "Raramente ou às vezes",
                 "Quase sempre ou sempre")

motivo_humilhacao <- c("Cor ou raça",
                       "Religião",
                       "Aparência do rosto",
                       "Aparência do corpo",
                       "Orientação sexual",
                       "Região de origem",
                       "Outros motivos")
