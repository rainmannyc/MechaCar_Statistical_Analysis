library(tidyverse)

mecha_table <- read.csv(file='C:/Users/2ainm/R_Analysis/R_Challenge/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

mecha_table

#?lm()
#lm(mpg ~ vehicle_weight,mecha_table) #create linear model

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics

suspension_table <- read.csv(file='C:/Users/2ainm/R_Analysis/R_Challenge/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

suspension_table

coil_load <- suspension_table %>% summarize(PSI_Mean=mean(PSI),PSI_Median=median(PSI),PSI_Variance=var(PSI), PSI_Std_dev=sd(PSI), .groups = 'keep') #create summary table with multiple columns

coil_load

coil_load_lot <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(PSI_Mean=mean(PSI),PSI_Median=median(PSI),PSI_Variance=var(PSI), PSI_Std_dev=sd(PSI), .groups = 'keep') 

coil_load_lot

?t.test()

t.test(log10(suspension_table$PSI),mu=0) #compare sample versus population mean

t.test(log10, subset(suspension_table$PSI.Manufacturing_Lot),mu=0)

rlang::last_error()
