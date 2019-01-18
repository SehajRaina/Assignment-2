
library(dplyr)


Data1 <- read.csv("InData.csv") 
names(Data1) 


Data2 <- Data1 %>%
  
  filter(Total<60) %>% 
  
    mutate(TotalG=Total/1000, 
         Nutrients= sub("^(\\w).*$", "\\1", Nutrients), 
         TotalG= gsub("\\.",",",TotalG))  %>% 
        
      select(TotalG, Taxon, Scenario, Nutrients) 

Data2 
