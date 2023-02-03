# Load required libraries
library(dplyr)
library(tidyverse)

# Import and read MechaCar_mpg.csv
file_path <- "C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/MechaCar_mpg.csv"

if (!file.exists(file_path)) {
  stop("The file does not exist in the specified path")
}

mecha_car_data <- read.csv(file_path)

# Perform linear regression using all six variables
lm_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_data)

# Get the summary of the linear regression model
summary(lm_model)

# Import and read Suspension_Coil.csv
suspension_coil <- read.csv("C:/Users/checo/OneDrive/Data_analysisi_bootcamp/Module_16_Statistics and R/Challenge 16/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Calculate summary statistics of PSI column
total_summary <- suspension_coil %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI), 
            SD = sd(PSI))

# Calculate summary statistics of PSI column by Manufacturing_Lot
lot_summary <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), 
            Median = median(PSI), 
            Variance = var(PSI), 
            SD = sd(PSI))

# T-test for all manufacturing lots
t.test(suspension_coil$PSI, mu = 1500)

# T-test for each manufacturing lot
lots <- unique(suspension_coil$Manufacturing_Lot)
for (lot in lots) {
  t.test(subset(suspension_coil, Manufacturing_Lot == lot)$PSI, mu = 1500)
}

# Plot histogram of PSI for all Manufacturing Lots
ggplot(suspension_coil, aes(PSI)) + 
  geom_histogram(binwidth = 50, color = "Black", fill = "lightblue") + 
  ggtitle("Histogram of PSI for all Manufacturing Lots") + 
  xlab("PSI") + ylab("Frequency")

# Plot boxplot of PSI by Manufacturing Lot
ggplot(suspension_coil, aes(x = Manufacturing_Lot, y = PSI)) +
  geom_boxplot(fill = "blue", alpha = 0.5) +
  ggtitle("Distribution of PSI by Manufacturing Lot") +
  xlab("Manufacturing Lot") + ylab("PSI") +
  theme_minimal()
