ida <- c()

for (i in 1:nrow(pense)){
  if (is.na(pense$B03001A1[i])){
    ida[i] <- NA
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
      superior <- 0
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
      superior <- 0
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
      superior <- 0
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
      superior <- 0
    }
    inferior <- inferior*(pense$B03006B[i]-1)
    superior <- superior*(pense$B03006B[i]-1)
    outras_ativ[i] <- paste(inferior, "a", superior, "minutos")
  }
}

table(ida)
table(volta)
table(ed_fis)
table(outras_ativ)

#somar todas (inf com inf e sup com sup)
#juntar categorias
#fazer tabelas