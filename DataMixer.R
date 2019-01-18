
#Assignment 2 R Markdown 
###January 17, 2018
###Sehaj Raina


#1.Load Package
library(dplyr)

#2.Import dataset 
Data1 <- read.csv("InData.csv") 
names(Data1) #checking heading names 

#3.Data wrangling using pipeline 
Data2 <- Data1 %>%
  
  filter(Total>=60) %>% #Keep rows with total biomass greater than or equal to 60mg (remove rows with less than 60mg)
  
    mutate(TotalG=Total/1000, #Create new column TotalG where Total biomass is converted from mg to g 
         Nutrients= sub("^(\\w).*$", "\\1", Nutrients), #Replace each string in Nutrients with its first letter
         TotalG= gsub("\\.",",",TotalG))  %>% #Replace periods with commas in TotalG column 
  
      select(TotalG, Taxon, Scenario, Nutrients) #Only select specific columns arranged in a specific order 

Data2 


