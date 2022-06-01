# Part 1

# Use the library() function to load the dplyr package
library(dplyr)

# Read the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg <- read.csv(file= 'Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Perform a linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data = mecha_mpg)

# Gather summary data to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mecha_mpg))

# Part 2

# Read the suspension_coil.CSV file as a dataframe
Suspension_Coil <- read.csv('Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe on the PSI column using summarize() 
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), 
                                               Median=median(PSI), 
                                               Variance=var(PSI), 
                                               SD=sd(PSI), 
                                               .groups = 'keep')

# Create a lot_summary dataframe using groupby() and summarize() 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), 
  .groups = 'keep')

# Part 3

# Import dataset into ggplot
plt <- ggplot(Suspension_Coil, aes(x=log10(PSI)))

# Use a density plot
plt + geom_density()

# T-test for all manufacturing lots
t.test(Suspension_Coil$PSI, mu = 1500)

#T-tests for each individual lot: 

# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)


# Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)


# Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)