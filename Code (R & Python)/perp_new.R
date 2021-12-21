
#read excels
library(readxl)
library(foreign)

perp <- read_excel("Perp_Dimention_R.xlsx", col_types = "text") 
perp <- as.data.frame(perp)

total_perp <- list(unique(perp$gname), unique(perp$gname2), unique(perp$gname3), unique(perp$gsubname), unique(perp$gsubname2), unique(perp$gsubname3))
total_perp <- data.frame("gname" = unlist(total_perp[1:6]))
total_perp <- unique(tolower(total_perp$gname))
total_perp <- data.frame("id" = c(1:length(total_perp)), "gname" = total_perp)
#p <- c(0, NA)
#total_perp <- rbind(p, total_perp)
str(total_perp)
str(perp)

is.na(perp$gsub_id2)

for (i in 1:nrow(perp)){
  if(is.na(perp$gname[i])){
    perp$perp_id[i] <- 0
  }
  if(is.na(perp$gname2[i])){
    perp$perp_id2[i] <- 0
  }
  if(is.na(perp$gname3[i])){
    perp$perp_id3[i] <- 0
  }
  if(is.na(perp$gsubname[i])){
    perp$gsub_id[i] <- 0
  }
  if(is.na(perp$gsubname2[i])){
    perp$gsub_id2[i] <- 0
  }
  if(is.na(perp$gsubname3[i])){
    perp$gsub_id3[i] <- 0
  }
  for (j in 1:nrow(total_perp)){
    if (tolower(perp$gname)[i]==total_perp$gname[j] & is.na(perp$gname[i]) == F){
      perp$perp_id[i] <- total_perp$id[j]
    }
    if (tolower(perp$gname2)[i]==total_perp$gname[j] & is.na(perp$gname2[i]) == F){
      perp$perp_id2[i] <- total_perp$id[j]
    }
    if (tolower(perp$gname3)[i]==total_perp$gname[j] & is.na(perp$gname3[i]) == F){
      perp$perp_id3[i] <- total_perp$id[j]
    }
    if (tolower(perp$gsubname)[i]==total_perp$gname[j] & is.na(perp$gsubname[i]) == F){
      perp$gsub_id[i] <- total_perp$id[j]
    }
    if (tolower(perp$gsubname2)[i]==total_perp$gname[j] & is.na(perp$gsubname2[i]) == F){
      perp$gsub_id2[i] <- total_perp$id[j]
    }
    if (tolower(perp$gsubname3)[i]==total_perp$gname[j] & is.na(perp$gsubname3[i]) == F){
      perp$gsub_id3[i] <- total_perp$id[j]
    }
  }
}
total_perp$gname <- toupper(total_perp$gname)
write.csv(total_perp,"C:/Users/tasso/Desktop/total_perp_names.csv", row.names = FALSE)

write.csv(perp,"C:/Users/tasso/Desktop/perp_names.csv", row.names = FALSE)
