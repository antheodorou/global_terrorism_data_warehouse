
#read excels
library(readxl)
library(foreign)

main <- read_excel("Main_Fact_Table.xlsx", col_types = "text") 
main <- as.data.frame(main)

write.csv(main,"C:/Users/tasso/Desktop/Main_Fact_Table.csv", row.names = FALSE)
