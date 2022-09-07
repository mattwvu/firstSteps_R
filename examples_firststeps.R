setwd("~/RWorkshop Development/data_analysis_visualization_r-main")

sample


var1 <- c(2,4,5)
var2 <- c("won", "loss", "won")

election <- data.frame(repCand, outCome)

election


title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith", "Force Awakens", "The Last Jedi", "Rise of Skywalker")
year <- c(1972, 1980, 1983, 1999, 2002, 2005, 2015, 2017, 2019)
length.min <- c(121, 124, 133, 133, 142, 140, 135, 152, 141)
box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059, 1333, 1074)

starWars.data <- data.frame(title, year, length.min, box.office.mil)
starWars.data

mean(starWars.data$length.min)

View(starWars.data)
head(starWars.data)
tail(starWars.data)

election <- data.frame(var1, var2)

election <- data.frame(District = var1, Outcome = var2)
election
str(election)

str(starWars.data)

party <- c("Rep", "Dem", "Rep")

election$partyFav <- party

election

election [1, 2] = "loss"
election


discr1 <- data.frame(District = 1, Outcome = "loss", partyFav = "Dem")
discr1

rbind(election, discr1)


rbind()

election


getwd()


install.packages("tidyverse")
library(tidyverse)

read_csv("coalpublic2020.csv")
coalProd <- read.csv("coalpublic2020.csv")
coalProd

covidHosp <-  read_csv("covid_hospt_state.csv")
covidHosp
View(covidHosp)

library(tidyverse)

coalProd <- as_tibble(coalProd)
coalProd

covidHosp <- arrange(covidHosp, desc(covidHosp$state))
covidHosp

coalProd_wv_nt <- coalProd %>% filter(Mine.State == "West Virginia (Northern)") %>% arrange(desc(Production..short.tons.))
view(coalProd_wv_nt)


idDeath <- read_csv("Death_Counts_id.csv")
idDeath
view(idDeath)

idDeath_state <- idDeath %>% filter(Jurisdiction == "West Virginia") %>% arrange(desc(`Total Deaths`))
view(idDeath_state)



help("as.Date")


getwd()

write_csv(coalProd_wv_nt, "westvirginia_coal_north.csv")

write_csv(idDeath_state, "death_infectious_wv.csv")


