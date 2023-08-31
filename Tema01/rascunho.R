modelo5 <- function(DESENHO1, VAR_COL1, NOME_VAR_COL1,
                    VETOR_COL1, FILTRO1, VAR_LIN1=NULL,
                    NOM_VAR_LIN1=NULL, VETOR_LIN1=NULL, VAR_EXTRA_DADOS1=NULL, VAR_EXTRA1=NULL,
                    VALOR_EXTRA1=NULL, fun_estima1, fun_arruma1, modelo1){ #VAR_EXTRA_DADOS é da forma pense$var
  tabela <- data.frame()
  for (i in 1:2){
    for (j in 1:2){
      tt1 <- eval(call(modelo, DESENHO=subset(DESENHO1, (VAR_EXTRA_DADOS1==1 & B01014!=-2)),
                     VAR_COL="B01014",
                     NOME_VAR_COL="Posse de Bens/Serviços",
                     VETOR_COL="Celular",
                     FILTRO=2,
                     VAR_EXTRA=VAR_EXTRA1,
                     VALOR_EXTRA=VALOR_EXTRA1[j],
                     fun_estima=fun_estima1,
                     fun_arruma=fun_arruma1))
      tabela <- rbind(tabela, tt1)
    }
  }
}
