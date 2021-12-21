#read excels
library(readxl)
library(foreign)
pc <- read_excel("Prov_City_ID.xlsx", col_types = "text") 
pc <- as.data.frame(pc)

state <-  read_excel("State_ID.xlsx")
state <- as.data.frame(state)

city <-  read_excel("City_ID.xlsx")
city <- as.data.frame(city)

#combine excels
pcity <- tolower(pc$city)
ccity <- tolower(city$city)
pstate <- tolower(pc$provstate)
sstate <- tolower(state$state)

for (i in 1:nrow(pc)){
  if (is.na(pc$provstate[i])){
    pc$prov_id[i] <- 0
  } else {
    for (j in 1:nrow(state)){
      if (pstate[i]==sstate[j]){
        pc$prov_id[i] <- state$state_id[j]
        break
      }
    }
  }
}
for (i in 1:nrow(pc)){
  if (is.na(pc$city[i])){
    pc$city_id[i] <- 0
  } else {
    for (j in 1:nrow(city)){
      if (pcity[i]==ccity[j]){
        pc$city_id[i] <- city$city_id[j]
        break
      }
    }
  }
}

write.csv(pc,"C:/Users/tasso/Desktop/State_City_ID.csv", row.names = FALSE)
