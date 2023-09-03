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
