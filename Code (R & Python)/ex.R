
#read excels
install.packages("readxl")
library(readxl)
year <- read_excel(choose.files()) 
month <- read_excel(choose.files()) 
date <- read_excel(choose.files()) 
fact <- read_excel(choose.files()) 

res<- read_excel(choose.files())  

#combine excels

for(i in 1:nrow(fact)){
  for (j in 1:nrow(year)){
    if (fact$iyear[i]==year$iyear[j]){
      fact$iyear[i] <- year$id_year[j]
    }
  }
}

fact$date <- paste(fact$iyear,"_", fact$imonth, "_" , fact$iday)
x <- unique(fact$date)

date_dim <- data.frame(matrix(ncol = 2, nrow=length(x)))
colnames(date_dim) <- c ('id', 'un_date')

for(i in 1:length(unique(fact$date))){
  date_dim$id[i] <-i
  date_dim$un_date[i] <- x[i]
}
library(dplyr)
library(tidyr)



for(i in 157072:nrow(fact)){
  for (j in 8925:nrow(date_dim)){
    if (fact$date[i]==date_dim$un_date[j]){
      fact$date[i] <- date_dim$id[j]
    }
  }
}

fact['id'] <- NULL
fact$id <- NULL

for(i in 1:nrow(fact)){
  fact$id[i] <- i
}
  
  
  





write.csv(date_dim,"C:/Users/konst/OneDrive/Υπολογιστής/D.csv", row.names = FALSE)
write.csv(fact,"C:/Users/konst/OneDrive/Υπολογιστής/F.csv", row.names = FALSE)

write.csv(year,"C:/Users/konst/OneDrive/Υπολογιστής/Y.csv", row.names = FALSE)
write.csv(month,"C:/Users/konst/OneDrive/Υπολογιστής/M.csv", row.names = FALSE)
write.csv(date,"C:/Users/konst/OneDrive/Υπολογιστής/Da.csv", row.names = FALSE)



