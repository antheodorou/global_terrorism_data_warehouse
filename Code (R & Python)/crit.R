
library(readxl)
crit <- read_excel(choose.files()) 

crit$comb <- paste(crit$crit1,",", crit$crit2, "," , crit$crit3)

x <-unique(crit$comb)

y<- data.frame(matrix(ncol = 2, nrow=length(x)))
colnames(y) <- c ('crit_id', 'crit')

for(i in 1:length(unique(crit$comb))){
  y$crit_id[i]<- i
  y$crit[i] <- x[i]
  
}

for(i in 1:nrow(crit)){
  for (j in 1: nrow(y)){
    if (crit$comb[i]==y$crit[j]){
      crit$comb[i]<-y$crit_id[j]
    }
  }
}

write.csv(y,"C:/Users/konst/OneDrive/Υπολογιστής/crit_dimm.csv", row.names = FALSE)
write.csv(crit,"C:/Users/konst/OneDrive/Υπολογιστής/crit_dff.csv", row.names = FALSE)

