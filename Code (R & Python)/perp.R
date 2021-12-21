#read excels
library(readxl)
library(foreign)

perp <- read_excel("Perp_Dimention_R.xlsx", col_types = "text") 
perp <- as.data.frame(perp)
perp_id <-  read_excel("Perp_name_id.xlsx")
perp_id <- as.data.frame(perp_id)
sub_id <-  read_excel("Perp_sub_id.xlsx")
sub_id <- as.data.frame(sub_id)

pperp <- tolower(perp$gname)
sperp <- tolower(perp_id$gname)
psub <- tolower(perp$gsubname)
ssub <- tolower(sub_id$gsubname)

for (i in 1:nrow(perp)){
  for (j in 1:nrow(perp_id)){
    if (pperp[i]==sperp[j]){
      perp$perp_id[i] <- perp_id$un_id[j]
      break
    }
  }
}

for (i in 1:nrow(perp)){
  if (is.na(perp$gsubname[i])){
    perp$gsub_id[i] <- 0
    next
  } else {
    for (j in 1:nrow(sub_id)){
      if (psub[i]==ssub[j]){
        perp$gsub_id[i] <- sub_id$gsub_id[j]
        break
      }
    }
  }
}

write.csv(perp,"C:/Users/tasso/Desktop/perp_id.csv", row.names = FALSE)