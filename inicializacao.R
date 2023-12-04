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

# Ajuste para a tabela 6.2.1

alcool_idade <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05003A[i])){
    alcool_idade[i] <- NA
  }
  else if (pense$B05003A[i] %in% 9:13){
    alcool_idade[i] <- 13
  }
  else{
    alcool_idade[i] <- pense$B05003A[i]
  }
}

pense$ALCOOL_IDADE <- factor(alcool_idade, c(-2, -1, 13:18, 99),
                        ordered=T)

# Ajuste para a tabela 6.3.1

bebado <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05007[i])){
    bebado[i] <- NA
  }
  else if (pense$B05007[i] %in% 2:5){
    bebado[i] <- 2
  }
  else{
    bebado[i] <- pense$B05007[i]
  }
}

pense$BEBADO <- factor(bebado, c(-2, -1, 1:2, 9),
                             ordered=T)

# Ajuste para a tabela 6.4.1

problemas_alcool <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05009[i])){
    problemas_alcool[i] <- NA
  }
  else if (pense$B05009[i] %in% 2:5){
    problemas_alcool[i] <- 2
  }
  else{
    problemas_alcool[i] <- pense$B05009[i]
  }
}

pense$PROBLEMAS_ALCOOL <- factor(problemas_alcool, c(-2, -1, 1:2, 9),
                       ordered=T)

# Ajuste para a tabela 6.5.1

bebeu_30dias <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05004A[i])){
    bebeu_30dias[i] <- NA
  }
  else if (pense$B05004A[i] %in% 2:7){
    bebeu_30dias[i] <- 2
  }
  else{
    bebeu_30dias[i] <- pense$B05004A[i]
  }
}

pense$BEBEU_30DIAS <- factor(bebeu_30dias, c(-2, -1, 1:2, 9),
                                 ordered=T)


# Ajuste para a tabela 6.7.1

doses <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05005A[i])){
    doses[i] <- NA
  }
  else if (pense$B05005A[i] %in% 4:5){
    doses[i] <- 4
  }
  else{
    doses[i] <- pense$B05005A[i]
  }
}

pense$DOSES <- factor(doses, c(-2, -1, 1:4, 9),
                      ordered=T)

# Ajuste para a tabela 6.12.1

responsavel_bebe <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B05011[i])){
    responsavel_bebe[i] <- NA
  }
  else if (pense$B05011[i] %in% 2:4){
    responsavel_bebe[i] <- 2
  }
  else{
    responsavel_bebe[i] <- pense$B05011[i]
  }
}

pense$RESPONSAVEL_BEBE <- factor(responsavel_bebe, c(-2, -1, 1:2, 5, 9),
                                 ordered=T)

# Ajuste para a tabela 7.2.1

drogas_idade <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B06002A[i])){
    drogas_idade[i] <- NA
  }
  else if (pense$B06002A[i] %in% 9:13){
    drogas_idade[i] <- 9
  }
  else{
    drogas_idade[i] <- pense$B06002A[i]
  }
}

pense$DROGAS_IDADE <- factor(drogas_idade, c(-2, -1, 9, 14:18, 99),
                                 ordered=T)

# Ajuste para a tabela 7.3.1

drogas_30dias <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B06003B[i])){
    drogas_30dias[i] <- NA
  }
  else if (pense$B06003B[i] %in% 2:5){
    drogas_30dias[i] <- 2
  }
  else{
    drogas_30dias[i] <- pense$B06003B[i]
  }
}

pense$DROGAS_30DIAS <- factor(drogas_30dias, c(-2, -1, 1:2, 9),
                             ordered=T)

# Ajuste para a tabela 7.4.1

maconha <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B06004A[i])){
    maconha[i] <- NA
  }
  else if (pense$B06004A[i] %in% 2:5){
    maconha[i] <- 2
  }
  else{
    maconha[i] <- pense$B06004A[i]
  }
}

pense$MACONHA <- factor(maconha, c(-2, -1, 1:2, 9),
                              ordered=T)

# Ajuste para a tabela 7.5.1

crack <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B06005A[i])){
    crack[i] <- NA
  }
  else if (pense$B06005A[i] %in% 2:5){
    crack[i] <- 2
  }
  else{
    crack[i] <- pense$B06005A[i]
  }
}

pense$CRACK <- factor(crack, c(-2, -1, 1:2, 9),
                        ordered=T)

# Ajuste para a tabela 8.2.1

idade_relacao_sex <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B08002[i])){
    idade_relacao_sex[i] <- NA
  }
  else if (pense$B08002[i] %in% 9:13){
    idade_relacao_sex[i] <- 13
  }
  else{
    idade_relacao_sex[i] <- pense$B08002[i]
  }
}

pense$IDADE_RELACAO_SEX <- factor(idade_relacao_sex, c(-2, -1, 13:18, 99),
                      ordered=T)

# Ajuste para a tabela 8.6.1

contraceptivo <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B08012A[i])){
    contraceptivo[i] <- NA
  }
  else if (pense$B08012A[i] %in% c(3:5, 7:9)){
    contraceptivo[i] <- 7
  }
  else{
    contraceptivo[i] <- pense$B08012A[i]
  }
}

pense$CONTRACEPTIVO <- factor(contraceptivo, c(-2, -1, 1:2, 6, 7, 10, 99),
                                  ordered=T)

# Ajuste para tabela 10.1.1

lava_mao <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B10004A[i])){
    lava_mao[i] <- NA
  }
  else if (pense$B10004A[i]==2){
    lava_mao[i] <- 1
  }
  else{
    lava_mao[i] <- pense$B10004A[i]
  }
}

pense$LAVA_MAO <- factor(lava_mao, c(-2, 1, 3:5, 9),
                              ordered=T)

# Ajuste para tabela 10.2.1

lava_mao2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B10005A[i])){
    lava_mao2[i] <- NA
  }
  else if (pense$B10005A[i]==2){
    lava_mao2[i] <- 1
  }
  else{
    lava_mao2[i] <- pense$B10005A[i]
  }
}

pense$LAVA_MAO2 <- factor(lava_mao2, c(-2, 1, 3:5, 9),
                         ordered=T)

# Ajuste para tabela 10.3.1

sabonete <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B10006A[i])){
    sabonete[i] <- NA
  }
  else if (pense$B10006A[i]==2){
    sabonete[i] <- 1
  }
  else{
    sabonete[i] <- pense$B10006A[i]
  }
}

pense$SABONETE <- factor(sabonete, c(-2, 1, 3:5, 9),
                          ordered=T)

# Ajuste para tabela 10.4.1

escova_dente <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B10001B[i])){
    escova_dente[i] <- NA
  }
  else if (pense$B10001B[i]==5){
    escova_dente[i] <- 4
  }
  else{
    escova_dente[i] <- pense$B10001B[i]
  }
}

pense$ESCOVA_DENTE <- factor(escova_dente, c(-2, 1:4, 9),
                         ordered=T)

# Ajuste para tabela 10.6.1

dentista <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B10003[i])){
    dentista[i] <- NA
  }
  else if (pense$B10003[i]==4){
    dentista[i] <- 3
  }
  else{
    dentista[i] <- pense$B10003[i]
  }
}

pense$DENTISTA <- factor(dentista, c(-2, 1:3, 9),
                             ordered=T)

# Ajuste para tabela 11.1.1

sentimento <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B11007[i])){
    sentimento[i] <- NA
  }
  else if (pense$B11007[i]==2){
    sentimento[i] <- 1
  }
  else if (pense$B11007[i]==5){
    sentimento[i] <- 4
  }
  else{
    sentimento[i] <- pense$B11007[i]
  }
}

pense$SENTIMENTO <- factor(sentimento, c(-2, 1, 3, 4, 9),
                         ordered=T)

# Ajuste para tabela 11.2.1

autopercepcao <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B11001[i])){
    autopercepcao[i] <- NA
  }
  else if (pense$B11001[i]==2){
    autopercepcao[i] <- 1
  }
  else if (pense$B11001[i]==5){
    autopercepcao[i] <- 4
  }
  else{
    autopercepcao[i] <- pense$B11001[i]
  }
}

pense$AUTOPERCEPCAO <- factor(autopercepcao, c(-2, 1, 3, 4, 9),
                           ordered=T)

# Ajuste para tabela 12.2.1

preocupacao <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B12004[i])){
    preocupacao[i] <- NA
  }
  else if (pense$B12004[i]==5){
    preocupacao[i] <- 4
  }
  else{
    preocupacao[i] <- pense$B12004[i]
  }
}

pense$PREOCUPACAO <- factor(preocupacao, c(-2, 1:4, 9),
                              ordered=T)

# Ajuste para tabela 12.3.1

triste <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B12005[i])){
    triste[i] <- NA
  }
  else if (pense$B12005[i]==5){
    triste[i] <- 4
  }
  else{
    triste[i] <- pense$B12005[i]
  }
}

pense$TRISTE <- factor(triste, c(-2, 1:4, 9),
                            ordered=T)

# Ajuste para tabela 12.4.1

ninguem_preocupa <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B12006[i])){
    ninguem_preocupa[i] <- NA
  }
  else if (pense$B12006[i]==5){
    ninguem_preocupa[i] <- 4
  }
  else{
    ninguem_preocupa[i] <- pense$B12006[i]
  }
}

pense$NINGUEM_PREOCUPA <- factor(ninguem_preocupa, c(-2, 1:4, 9),
                       ordered=T)

# Ajuste para tabela 12.5.1

irritado <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B12007[i])){
    irritado[i] <- NA
  }
  else if (pense$B12007[i]==5){
    irritado[i] <- 4
  }
  else{
    irritado[i] <- pense$B12007[i]
  }
}

pense$IRRITADO <- factor(irritado, c(-2, 1:4, 9),
                                 ordered=T)

# Ajuste para tabela 12.6.1

vida_vale <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B12008[i])){
    vida_vale[i] <- NA
  }
  else if (pense$B12008[i]==5){
    vida_vale[i] <- 4
  }
  else{
    vida_vale[i] <- pense$B12008[i]
  }
}

pense$VIDA_VALE <- factor(vida_vale, c(-2, 1:4, 9),
                         ordered=T)

# Ajuste para tabela 12.7.1

autoavaliacao_negativa <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$PREOCUPACAO[i])){
    autoavaliacao_negativa[i] <- NA
  }
  else if ((pense$PREOCUPACAO[i]==4
            & pense$TRISTE[i]==4
            & pense$NINGUEM_PREOCUPA[i]==4
            & pense$IRRITADO[i]==4
            & pense$VIDA_VALE[i]==4)
           | (pense$PREOCUPACAO[i]==4
              & pense$TRISTE[i]==4
              & pense$NINGUEM_PREOCUPA[i]==4
              & pense$IRRITADO[i]==4)
           | (pense$PREOCUPACAO[i]==4
              & pense$TRISTE[i]==4
              & pense$NINGUEM_PREOCUPA[i]==4
              & pense$VIDA_VALE[i]==4)
           | (pense$PREOCUPACAO[i]==4
              & pense$TRISTE[i]==4
              & pense$IRRITADO[i]==4
              & pense$VIDA_VALE[i]==4)
           | (pense$PREOCUPACAO[i]==4
              & pense$NINGUEM_PREOCUPA[i]==4
              & pense$IRRITADO[i]==4
              & pense$VIDA_VALE[i]==4)
           | (pense$TRISTE[i]==4
              & pense$NINGUEM_PREOCUPA[i]==4
              & pense$IRRITADO[i]==4
              & pense$VIDA_VALE[i]==4)){
    autoavaliacao_negativa[i] <- "Sim"
  }
  else if (pense$PREOCUPACAO[i]==-2
           | pense$TRISTE[i]==-2
           | pense$NINGUEM_PREOCUPA[i]==-2
           | pense$IRRITADO[i]==-2
           | pense$VIDA_VALE[i]==-2
           | pense$PREOCUPACAO[i]==9
           | pense$TRISTE[i]==9
           | pense$NINGUEM_PREOCUPA[i]==9
           | pense$IRRITADO[i]==9
           | pense$VIDA_VALE[i]==9){
    autoavaliacao_negativa[i] <- "Abandono"
  }
  else{
    autoavaliacao_negativa[i] <- "Não"
  }
}

pense$AUTOAVALIACAO_NEGATIVA <- factor(autoavaliacao_negativa,
                                       c("Abandono", "Sim", "Não"),
                                       ordered=T)

#autoavaliacao_negativa <- c()

#for (i in 1:nrow(pense)){
#  if (is.na(pense$PREOCUPACAO[i])){
#    autoavaliacao_negativa[i] <- NA
#  }
#  else if (pense$TRISTE[i]==-2
#           | pense$VIDA_VALE[i]==-2){
#    autoavaliacao_negativa[i] <- "Abandono"
#  }
#  else if (pense$TRISTE[i]==9
#           | pense$VIDA_VALE[i]==9){
#    autoavaliacao_negativa[i] <- "Sem resposta"
#  }
#  else if ((pense$TRISTE[i]==4)
#           & (pense$VIDA_VALE[i]==4)){
#    autoavaliacao_negativa[i] <- "Sim"
#  }
#  else{
#    autoavaliacao_negativa[i] <- "Não"
#  }
#}

#pense$AUTOAVALIACAO_NEGATIVA <- factor(autoavaliacao_negativa,
#                                       c("Abandono", "Sim", "Não", "Sem resposta"),
#                                       ordered=T)

# Ajuste para tabela 13.1.1

estado_saude <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B13005[i])){
    estado_saude[i] <- NA
  }
  else if (pense$B13005[i]==2){
    estado_saude[i] <- 1
  }
  else if (pense$B13005[i]==4){
    estado_saude[i] <- 5
  }
  else{
    estado_saude[i] <- pense$B13005[i]
  }
}

pense$ESTADO_SAUDE <- factor(estado_saude, c(-2, 1, 3, 5, 9),
                          ordered=T)

# Ajuste para tabela 13.2.1

faltou_saude <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B13006[i])){
    faltou_saude[i] <- NA
  }
  else if (pense$B13006[i] %in% 2:5){
    faltou_saude[i] <- 2
  }
  else{
    faltou_saude[i] <- pense$B13006[i]
  }
}

pense$FALTOU_SAUDE <- factor(faltou_saude, c(-2, 1:2, 9),
                             ordered=T)

# Ajuste para tabela 13.4.1

servico_saude <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B13002A[i])){
    servico_saude[i] <- NA
  }
  else if (pense$B13002A[i] %in% 2:4){
    servico_saude[i] <- 2
  }
  else if (pense$B13002A[i] %in% 5:7){
    servico_saude[i] <- 5
  }
  else if (pense$B13002A[i] %in% 8:11){
    servico_saude[i] <- 8
  }
  else{
    servico_saude[i] <- pense$B13002A[i]
  }
}

pense$SERVICO_SAUDE <- factor(servico_saude, c(-2, -1, 1, 2, 5, 8, 99),
                             ordered=T)

# Ajuste para tabela 13.5.1

ubs <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B13003A[i])){
    ubs[i] <- NA
  }
  else if (pense$B13003A[i] %in% 2:5){
    ubs[i] <- 2
  }
  else{
    ubs[i] <- pense$B13003A[i]
  }
}

pense$UBS <- factor(ubs, c(-2, -1, 1:2, 9),
                              ordered=T)

# Ajuste para tabela 13.7.1

motivo_ubs <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B13007A[i])){
    motivo_ubs[i] <- NA
  }
  else if (pense$B13007A[i] %in% 3:4){
    motivo_ubs[i] <- 3
  }
  else if (pense$B13007A[i] %in% c(2, 8:11, 13)){
    motivo_ubs[i] <- 13
  }
  else{
    motivo_ubs[i] <- pense$B13007A[i]
  }
}

pense$MOTIVO_UBS <- factor(motivo_ubs, c(-2, -1, 1, 3, 5:7, 12:13, 99),
                    ordered=T)

# Ajuste para tabela 14.3.1

pcs <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P33A[i])){
    pcs[i] <- NA
  }
  else if (pense$E01P33A[i] %in% 2:7){
    pcs[i] <- 2
  }
  else{
    pcs[i] <- pense$E01P33A[i]
  }
}

pense$PCS <- factor(pcs, c(1:2, 9),
                    ordered=T)

# Ajuste para tabela 14.6.1

conselho <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P7301[i])){
    conselho[i] <- NA
  }
  else if (pense$E01P7301[i]==-1
           & pense$E01P7302[i]==-1
           & pense$E01P7303[i]==-1
           & pense$E01P7304[i]==-1
           & pense$E01P7305[i]==-1
           & pense$E01P7306[i]==-1){
    conselho[i] <- "Não"
  }
  else if (pense$E01P7301[i]==9
           & pense$E01P7302[i]==9
           & pense$E01P7303[i]==9
           & pense$E01P7304[i]==9
           & pense$E01P7305[i]==9
           & pense$E01P7306[i]==9){
    conselho[i] <- "Sem resposta"
  }
  else{
    conselho[i] <- "Sim"
  }
}

pense$CONSELHO <- factor(conselho, c("Sim", "Não", "Sem resposta"),
                    ordered=T)

# Ajuste para tabela 15.1.1

regra_alimento <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P77[i])){
    regra_alimento[i] <- NA
  }
  else if (pense$E01P77[i] %in% 1:3){
    regra_alimento[i] <- 1
  }
  else{
    regra_alimento[i] <- pense$E01P77[i]
  }
}

pense$REGRA_ALIMENTO <- factor(regra_alimento, c(1, 4, 9),
                    ordered=T)

# Ajuste para tabela 15.11.1

oferece_alimento <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P11A[i])){
    oferece_alimento[i] <- NA
  }
  else if (pense$E01P11A[i]==1
           | pense$E01P13A[i]==1){
    oferece_alimento[i] <- 1
  }
  else if (pense$E01P11A[i]==9
           | pense$E01P13A[i]==9){
    oferece_alimento[i] <- 9
  }
  else{
    oferece_alimento[i] <- 2
  }
}

pense$OFERECE_ALIMENTO <- factor(oferece_alimento, c(1, 2, 9),
                         ordered=T)

# Ajuste para tabela 15.16.1

funcao_horta <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P49A1[i])){
    funcao_horta[i] <- NA
  }
  else if (pense$E01P49A1[i]==1
           | pense$E01P49A2[i]==1){
    funcao_horta[i] <- 1
  }
  else if (pense$E01P49A1[i]==-1
           | pense$E01P49A2[i]==-1){
    funcao_horta[i] <- -1
  }
  else if (pense$E01P49A1[i]==9
           | pense$E01P49A2[i]==9){
    funcao_horta[i] <- 9
  }
  else{
    funcao_horta[i] <- 2
  }
}

pense$FUNCAO_HORTA <- factor(funcao_horta, c(-1, 1, 2, 9),
                                 ordered=T)

# Ajuste para tabela 16.2.1

atividade_fisica_outro <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P7502[i])){
    atividade_fisica_outro[i] <- NA
  }
  else if (pense$E01P7502[i]==1 | pense$E01P7503[i]==1
           | pense$E01P7506[i]==1 | pense$E01P7507[i]==1
           | pense$E01P7508[i]==1){
    atividade_fisica_outro[i] <- 1
  }
  else if (pense$E01P7502[i]==0
           & pense$E01P7503[i]==0 & pense$E01P7506[i]==0
           & pense$E01P7507[i]==0 & pense$E01P7508[i]==0){
    atividade_fisica_outro[i] <- 0
  }
  else if (pense$E01P7502[i]==-1
           & pense$E01P7503[i]==-1 & pense$E01P7506[i]==-1
           & pense$E01P7507[i]==-1 & pense$E01P7508[i]==-1){
    atividade_fisica_outro[i] <- -1
  }
  else{
    atividade_fisica_outro[i] <- 9
  }
}

pense$ATIVIDADE_FISICA_OUTRO <- factor(atividade_fisica_outro, c(-1, 0, 1, 9),
                             ordered=T)

# Ajuste para tabela 16.3.1

atividades_extras <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P22A[i])){
    atividades_extras[i] <- NA
  }
  else if (pense$E01P22A[i] %in% 1:3){
    atividades_extras[i] <- 1
  }
  else{
    atividades_extras[i] <- pense$E01P22A[i]
  }
}

pense$ATIVIDADES_EXTRAS <- factor(atividades_extras, c(-1, 1, 4, 9),
                                       ordered=T)

# Ajuste para tabela 16.6.1

pista_corrida <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P18A[i])){
    pista_corrida[i] <- NA
  }
  else if (pense$E01P18A[i] %in% 2:3){
    pista_corrida[i] <- 2
  }
  else{
    pista_corrida[i] <- pense$E01P18A[i]
  }
}

pense$PISTA_CORRIDA <- factor(pista_corrida, c(1, 2, 9),
                                  ordered=T)

# Ajuste para tabela 17.2.1

suspender_aulas <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P59A2[i])){
    suspender_aulas[i] <- NA
  }
  else if (pense$E01P59A2[i] %in% 2:3){
    suspender_aulas[i] <- 2
  }
  else{
    suspender_aulas[i] <- pense$E01P59A2[i]
  }
}

pense$SUSPENDER_AULAS <- factor(suspender_aulas, c(-1, 1, 2, 9),
                              ordered=T)

# Ajuste Tema 9 e 17

faltou_medo <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B09001[i])){
    faltou_medo[i] <- NA
  }
  else if (pense$B09001[i] %in% 2:6){
    faltou_medo[i] <- 2
  }
  else{
    faltou_medo[i] <- pense$B09001[i]
  }
}

pense$FALTOU_MEDO <- factor(faltou_medo, c(-2, 1, 2, 9),
                                ordered=T)

# Ajuste tabela 18.1.1

agua_potavel <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P51[i])){
    agua_potavel[i] <- NA
  }
  else if (pense$E01P51[i] %in% 1:3){
    agua_potavel[i] <- 1
  }
  else if (pense$E01P51[i]==-1){
    agua_potavel[i] <- 0
  }
  else{
    agua_potavel[i] <- 9
  }
}

pense$AGUA_POTAVEL <- factor(agua_potavel, c(0, 1, 9),
                            ordered=T)

# Ajuste tabela 18.4.1

possui_banheiro <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P55A[i])){
    possui_banheiro[i] <- NA
  }
  else if (pense$E01P55A[i] %in% 1:2){
    possui_banheiro[i] <- 1
  }
  else if (pense$E01P55A[i]==-1){
    possui_banheiro[i] <- 0
  }
  else{
    possui_banheiro[i] <- 9
  }
}

pense$POSSUI_BANHEIRO <- factor(possui_banheiro, c(0, 1, 9),
                             ordered=T)

# Ajuste tabela 18.9.1

sabao_pia <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P56[i])){
    sabao_pia[i] <- NA
  }
  else if (pense$E01P56[i]==1 & pense$E01P57[i]==1){
    sabao_pia[i] <- 1
  }
  else if (pense$E01P56[i]==9 | pense$E01P57[i]==9){
    sabao_pia[i] <- 9
  }
  else{
    sabao_pia[i] <- 0
  }
}

pense$SABAO_PIA <- factor(sabao_pia, c(-1, 0, 1, 9),
                                ordered=T)

# Ajuste tabela 18.10.1

lixo_interno <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P58A1[i])){
    lixo_interno[i] <- NA
  }
  else if (pense$E01P58A1[i] %in% 1:2){
    lixo_interno[i] <- 1
  }
  else{
    lixo_interno[i] <- pense$E01P58A1[i]
  }
}

pense$LIXO_INTERNO <- factor(lixo_interno, c(1, 3, 4, 9),
                          ordered=T)

# Ajuste tabela 18.11.1

lixo_fora <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P58A2[i])){
    lixo_fora[i] <- NA
  }
  else if (pense$E01P58A2[i] %in% 1:2){
    lixo_fora[i] <- 1
  }
  else{
    lixo_fora[i] <- pense$E01P58A2[i]
  }
}

pense$LIXO_FORA <- factor(lixo_fora, c(1, 3, 4, 9),
                             ordered=T)

# Ajuste tabela 19.7.1

alergia <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P66A[i])){
    alergia[i] <- NA
  }
  else if (pense$E01P66A[i] %in% 1:3){
    alergia[i] <- 1
  }
  else{
    alergia[i] <- pense$E01P66A[i]
  }
}

pense$ALERGIA <- factor(alergia, c(1, 4, 9),
                          ordered=T)

# Ajuste tabela 19.8.1

cigarro_prof <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$E01P26A[i])){
    cigarro_prof[i] <- NA
  }
  else if (pense$E01P26A[i] %in% 1:3){
    cigarro_prof[i] <- 1
  }
  else{
    cigarro_prof[i] <- pense$E01P26A[i]
  }
}

pense$CIGARRO_PROF <- factor(cigarro_prof, c(1, 4, 9),
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
