dir.create("data")
library(tidyverse)
data_real <- read_csv2("data/Kongerækken.csv")
data_real %>% 
  select(`Monarch:`, Duration_of_Reign) %>% 
  ggplot(aes(x = `Monarch:`, y = Duration_of_Reign)) + 
  geom_col() + 
  labs(title = "Monarkers regeringstid",y = "Regeringstid",x = "Monarker") +
  coord_flip() + scale_y_continuous(breaks=seq(0,60,5))
