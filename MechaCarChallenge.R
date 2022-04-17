library(ggplot2)
library(tidyverse)
library(jsonlite)
library(dplyr)

#Linear Regression to Predict MPG
Mecha_table <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, Mecha_table)

summary(lm(mpg ~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, Mecha_table))


#Create Visualizations for the Trip Analysis
Coil_table <- read.csv('Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

summarize(Coil_table, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), STD=sd(PSI))

total_summary <- data.frame(summarize(Coil_table, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), STD=sd(PSI)))

lot_summary <- data.frame(Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), STD=sd(PSI)))




#T-Tests on Suspension Coils
t.test(Coil_table$PSI,mu=1500)

t.test(subset(Coil_table$PSI,Coil_table$Manufacturing_Lot=='Lot1'),mu=1500)

t.test(subset(Coil_table$PSI,Coil_table$Manufacturing_Lot=='Lot2'),mu=1500)

t.test(subset(Coil_table$PSI,Coil_table$Manufacturing_Lot=='Lot3'),mu=1500)
