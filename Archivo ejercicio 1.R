library(readxl)
library(dplyr)
df<-read_xlsx("online_retail_II.xlsx")
str(df)
df$`Customer ID`<-as.character(df$`Customer ID`)
summary(df)

#posibles outliers en precio y cantidad
length(unique(df$Invoice))

precio_medio<-df %>% 
  group_by(Invoice,Description) %>% 
  summarise(preciomedio=mean(Price*Quantity))

