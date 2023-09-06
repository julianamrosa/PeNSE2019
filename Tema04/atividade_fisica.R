ida <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03001A1[i])){
    ida[i] <- NA
  }
  else if (pense$B03001A1[i]==1){
    inferior <- 0
    superior <- 0
    ida[i] <- paste(inferior, "a", superior, "minutos")
  }
  else if (pense$B03001A1[i] %in% c(-1, -2)
           | pense$B03002A1[i] %in% c(-1, -2)){
    ida[i] <- -2
  }
  else if (pense$B03001A1[i]==9
           | pense$B03002A1[i]==9){
    ida[i] <- 9
  }
  else{
    if (pense$B03002A1[i]==1){
      inferior <- 1
      superior <- 10
    }
    else if (pense$B03002A1[i]==2){
      inferior <- 10
      superior <- 19
    }
    else if (pense$B03002A1[i]==3){
      inferior <- 20
      superior <- 29
    }
    else if (pense$B03002A1[i]==4){
      inferior <- 30
      superior <- 39
    }
    else if (pense$B03002A1[i]==5){
      inferior <- 40
      superior <- 49
    }
    else if (pense$B03002A1[i]==6){
      inferior <- 50
      superior <- 59
    }
    else if (pense$B03002A1[i]==7){
      inferior <- 60
      superior <- 69 #infinito
    }
    inferior <- inferior*(pense$B03001A1[i]-1)
    superior <- superior*(pense$B03001A1[i]-1)
    ida[i] <- paste(inferior, "a", superior, "minutos")
  }
}




volta <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03001A2[i])){
    volta[i] <- NA
  }
  else if (pense$B03001A2[i]==1){
    inferior <- 0
    superior <- 0
    volta[i] <- paste(inferior, "a", superior, "minutos")
  }
  else if (pense$B03001A2[i] %in% c(-1, -2)
           | pense$B03002A2[i] %in% c(-1, -2)){
    volta[i] <- -2
  }
  else if (pense$B03001A2[i]==9
           | pense$B03002A2[i]==9){
    volta[i] <- 9
  }
  else{
    if (pense$B03002A2[i]==1){
      inferior <- 1
      superior <- 10
    }
    else if (pense$B03002A2[i]==2){
      inferior <- 10
      superior <- 19
    }
    else if (pense$B03002A2[i]==3){
      inferior <- 20
      superior <- 29
    }
    else if (pense$B03002A2[i]==4){
      inferior <- 30
      superior <- 39
    }
    else if (pense$B03002A2[i]==5){
      inferior <- 40
      superior <- 49
    }
    else if (pense$B03002A2[i]==6){
      inferior <- 50
      superior <- 59
    }
    else if (pense$B03002A2[i]==7){
      inferior <- 60
      superior <- 69 #infinito
    }
    inferior <- inferior*(pense$B03001A2[i]-1)
    superior <- superior*(pense$B03001A2[i]-1)
    volta[i] <- paste(inferior, "a", superior, "minutos")
  }
}








ed_fis <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03003A[i])){
    ed_fis[i] <- NA
  }
  else if (pense$B03003A[i]==1){
    inferior <- 0
    superior <- 0
    ed_fis[i] <- paste(inferior, "a", superior, "minutos")
  }
  else if (pense$B03003A[i] %in% c(-1, -2)
           | pense$B03005B[i] %in% c(-1, -2)){
    ed_fis[i] <- -2
  }
  else if (pense$B03003A[i]==9
           | pense$B03005B[i]==99){
    ed_fis[i] <- 9
  }
  else{
    if (pense$B03005B[i]==1){
      inferior <- 0
      superior <- 0
    }
    else if (pense$B03005B[i]==2){
      inferior <- 1
      superior <- 10
    }
    else if (pense$B03005B[i]==3){
      inferior <- 10
      superior <- 19
    }
    else if (pense$B03005B[i]==4){
      inferior <- 20
      superior <- 29
    }
    else if (pense$B03005B[i]==5){
      inferior <- 30
      superior <- 39
    }
    else if (pense$B03005B[i]==6){
      inferior <- 40
      superior <- 49
    }
    else if (pense$B03005B[i]==7){
      inferior <- 50
      superior <- 59
    }
    else if (pense$B03005B[i]==8){
      inferior <- 60
      superior <- 79
    }
    else if (pense$B03005B[i]==9){
      inferior <- 80
      superior <- 89 #infinito
    }
    inferior <- inferior*(pense$B03003A[i]-1)
    superior <- superior*(pense$B03003A[i]-1)
    ed_fis[i] <- paste(inferior, "a", superior, "minutos")
  }
}





outras_ativ <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03006B[i])){
    outras_ativ[i] <- NA
  }
  else if (pense$B03006B[i]==1){
    inferior <- 0
    superior <- 0
    outras_ativ[i] <- paste(inferior, "a", superior, "minutos")
  }
  else if (pense$B03006B[i] %in% c(-1, -2)
           | pense$B03007A[i] %in% c(-1, -2)){
    outras_ativ[i] <- -2
  }
  else if (pense$B03006B[i]==9
           | pense$B03007A[i]==9){
    outras_ativ[i] <- 9
  }
  else{
    if (pense$B03007A[i]==1){
      inferior <- 1
      superior <- 10
    }
    else if (pense$B03007A[i]==2){
      inferior <- 10
      superior <- 19
    }
    else if (pense$B03007A[i]==3){
      inferior <- 20
      superior <- 29
    }
    else if (pense$B03007A[i]==4){
      inferior <- 30
      superior <- 39
    }
    else if (pense$B03007A[i]==5){
      inferior <- 40
      superior <- 49
    }
    else if (pense$B03007A[i]==6){
      inferior <- 50
      superior <- 59
    }
    else if (pense$B03007A[i]==7){
      inferior <- 60
      superior <- 79
    }
    else if (pense$B03007A[i]==8){
      inferior <- 80
      superior <- 89 #infinito
    }
    inferior <- inferior*(pense$B03006B[i]-1)
    superior <- superior*(pense$B03006B[i]-1)
    outras_ativ[i] <- paste(inferior, "a", superior, "minutos")
  }
}

atividade <- c()

for (i in 1:nrow(pense)){
  if (is.na(ida[i])){
    atividade[i] <- NA
  }
  else if (ida[i]==-2 | volta[i]==-2 | ed_fis[i]==-2 | outras_ativ[i]==-2){
    atividade[i] <- -2
  }
  else if (ida[i]==9 | volta[i]==9 | ed_fis[i]==9 | outras_ativ[i]==9){
    atividade[i] <- 9
  }
  else{
    temp1 <- strsplit(ida[i], " ", fixed=T)[[1]]
    temp2 <- strsplit(volta[i], " ", fixed=T)[[1]]
    temp3 <- strsplit(ed_fis[i], " ", fixed=T)[[1]]
    temp4 <- strsplit(outras_ativ[i], " ", fixed=T)[[1]]
    inf1 <- as.numeric(temp1[1])
    inf2 <- as.numeric(temp2[1])
    inf3 <- as.numeric(temp3[1])
    inf4 <- as.numeric(temp4[1])
    sup1 <- as.numeric(temp1[3])
    sup2 <- as.numeric(temp2[3])
    sup3 <- as.numeric(temp3[3])
    sup4 <- as.numeric(temp4[3])
    inferior <- inf1+inf2+inf3+inf4
    superior <- sup1+sup2+sup3+sup4
    atividade[i] <- paste(inferior, "a", superior, "minutos")
  }
}

#for (i in 1:nrow(pense)){
#  if (is.na(atividade[i])){
#    atividade2[i] <- NA
#  }
#  else if (atividade[i]=="-2"){
#    atividade2[i] <- "-2"
#  }
#  else if (atividade[i]=="9"){
#    atividade2[i] <- "9"
#  }
#  else{
#    inferior <- as.numeric(strsplit(atividade[i], " ", fixed=T)[[1]][1])
#    superior <- as.numeric(strsplit(atividade[i], " ", fixed=T)[[1]][3])
#    pm <- (inferior+superior)/2
#    if (superior>=2000){
#      if (inferior>=1 & inferior<=149){
#        atividade2[i] <- "1 a 149 minutos"
#      }
#      else if (inferior>=150 & inferior <=299){
#        atividade2[i] <- "150 a 299 minutos"
#      }
#      else if (inferior>=300){
#        atividade2[i] <- "300 minutos ou mais"
#      }
#    }
#    else{
#      if (pm==0){
#        atividade2[i] <- "Inativo"
#      }
#      else if (pm>=1 & pm<=149){
#        atividade2[i] <- "1 a 149 minutos"
#      }
#      else if (pm>=150 & pm<=299){
#        atividade2[i] <- "150 a 299 minutos"
#      }
#      else if (pm>=300){
#        atividade2[i] <- "300 minutos ou mais"
#      }
#    }
#  }
#}

atividade2 <- c()

for (i in 1:nrow(pense)){
  if (is.na(atividade[i])){
    atividade2[i] <- NA
  }
  else if (atividade[i]=="-2"){
    atividade2[i] <- "-2"
  }
  else if (atividade[i]=="9"){
    atividade2[i] <- "9"
  }
  else{
    inferior <- as.numeric(strsplit(atividade[i], " ", fixed=T)[[1]][1])
    superior <- as.numeric(strsplit(atividade[i], " ", fixed=T)[[1]][3])
    pm <- (inferior+superior)/2
    if (pm==0){
      atividade2[i] <- "Inativo"
    }
    else if (pm>=1 & pm<=149){
      atividade2[i] <- "1 a 149 minutos"
    }
    else if (pm>=150 & pm<=299){
      atividade2[i] <- "150 a 299 minutos"
    }
    else if (pm>=300){
      atividade2[i] <- "300 minutos ou mais"
    }
  }
}

pense$ATIVIDADE <- factor(atividade2, c("-2", "Inativo", "1 a 149 minutos", "150 a 299 minutos",
                                        "300 minutos ou mais", "9"),
                          ordered=T)
