## TABELA 1.1.2 ##

#vetor necessarios
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

#olhando categorias
table(pense$UF) #uf

## DEFININDO FUNCOES

tab_112 <- function(tt, local, nome_var){
  #Filtrando: sexo
  tt <- tt[1:2, ]
  
  #criando demais colunas
  tt$Localizacao <- rep(local, 2)
  if (nome_var=="Sexo"){
    tt$Valor_Var <- c("Masculino", "Feminino")
  }
  else if (nome_var=="Dep Adm"){
    tt$Valor_Var <- c("Pública", "Privada")
  }
  
  #arrumando a tabela
  tt <- arruma_tab(tt, "Total de escolares", nome_var)
  tt <- tt%>%
    select(Indicador, Localizacao, Variavel, Valor_Var, Total,
           Erro_Padrao, LI, LS)
  return(tt)
}

## SEXO - por UF e região

#Brasil
tt1 <- estima_total(pense, desenho_validos, "B01001A")
tt1 <- tab_112(tt1, "Brasil", "Sexo")
tabela_112 <- tt1
#2 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_total(pense, subset(desenho_validos, REGIAO==i),
                      "B01001A")
  tt1 <- tab_112(tt1, regiao[i], "Sexo")
  tabela_112 <- rbind(tabela_112, tt1)
}
#12 linhas

#UFs
for (i in ufs_cod){
  tt1 <- estima_total(pense, subset(desenho_validos, UF==i),
                      "B01001A")
  tt1 <- tab_112(tt1, ufs_nomes[which(ufs_cod==i)], "Sexo")
  tabela_112 <- rbind(tabela_112, tt1)
}
#66 linhas

## DEP ADM - por UF e região

#Brasil
tt1 <- estima_total(pense, desenho_validos, "DEP_ADMIN")
tt1 <- tab_112(tt1, "Brasil", "Dep Adm")
tabela_112 <- rbind(tabela_112, tt1)
#68 linhas

#Regioes
for (i in 1:5){
  tt1 <- estima_total(pense, subset(desenho_validos, REGIAO==i),
                      "DEP_ADMIN")
  tt1 <- tab_112(tt1, regiao[i], "Dep Adm")
  tabela_112 <- rbind(tabela_112, tt1)
}
#78 linhas

#UFs
for (i in ufs_cod){
  tt1 <- estima_total(pense, subset(desenho_validos, UF==i),
                      "DEP_ADMIN")
  tt1 <- tab_112(tt1, ufs_nomes[which(ufs_cod==i)], "Dep Adm")
  tabela_112 <- rbind(tabela_112, tt1)
}
#132 linhas

## Salvando planilha

wb <- loadWorkbook("Tema01/Tema01.xlsx")
addWorksheet(wb,"1.1.2")
writeData(wb,"1.1.2",tabela_112)
saveWorkbook(wb,"Tema01/Tema01.xlsx",overwrite = TRUE)