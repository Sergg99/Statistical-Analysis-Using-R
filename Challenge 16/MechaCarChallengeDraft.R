#Part 1: Linear Regression to Predict MPG
#------------------------------------------------------------------
# Load the dplyr package
library(dplyr)
library(tidyverse)
#Import and read in the MechaCar_mpg.csv file as a dataframe

file_path <- "C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/MechaCar_mpg.csv"

if (!file.exists(file_path)) {
  stop("The file does not exist in the specified path")
}


# Perform linear regression using all six variables
Mecha_car_data <- read.csv("C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_car_data)


#Part 2: Summary Statistics on Suspension Coils
#------------------------------------------------------------------
# Get the summary of the linear regression model
Mecha_car_data <- read.csv("C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/MechaCar_mpg.csv")

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha_car_data))


# Import and read CSV file as DataFrame
Suspension_Coil <- read.csv("C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Use summarize() to create total_summary DataFrame on PSI column
library(dplyr)

total_summary <- Suspension_Coil %>% 
  summarize(Mean=mean(PSI), 
            Median=median(PSI), 
            Variance=var(PSI), 
            SD=sd(PSI), 
            .groups = 'keep')
total_summary

# lot_summary using group_by() and summarize() of the suspension coil’s PSI column.
library(dplyr)

lot_summary <- Suspension_Coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), 
            Median=median(PSI), 
            Variance=var(PSI), 
            SD=sd(PSI), 
            .groups = 'keep')
lot_summary

#Part 3: T-Tests on Suspension Coils
#----------------------------------------------------------------------------------------
# T-test for all manufacturing lots
t.test(Suspension_Coil$PSI, mu = 1500)

# T-test to determine if PSI across all manufacturing lots is statistically different across each manufacturing lot.
# Lot 1:
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

# Lot 2:
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

# Lot 3: 
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)


library(ggplot2)
ggplot(Suspension_Coil, aes(PSI)) + 
  geom_histogram(binwidth = 50, color = "Black", fill = "lightblue") + 
  ggtitle("Histogram of PSI for all Manufacturing Lots") + 
  xlab("PSI") + ylab("Frequency")


ggplot(Suspension_Coil, aes(x = Manufacturing_Lot, y = PSI)) +
  geom_boxplot(fill = "blue", alpha = 0.5) +
  ggtitle("Distribution of PSI by Manufacturing Lot") +
  xlab("Manufacturing Lot") + ylab("PSI") +
  theme_minimal()

