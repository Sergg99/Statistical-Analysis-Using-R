# Statistical-Analysis-Using-R

## Overview: 
At AutosRUs, our latest MechaCar prototype is facing some roadblocks in production. That's why our senior management reached out to the data analytics team for help. They wanted us to take a closer look at the production data and find any insights that could help the manufacturing team overcome these issues.

## Description:
In this statistical study, the goal is to compare the performance of the MechaCar against other vehicles in the market. We aim to provide a comprehensive analysis of key metrics that are of interest to consumers. This includes metrics such as cost, fuel efficiency in both city and highway conditions, horse power, maintenance cost, and safety ratings. By quantifying the performance of the MechaCar against the competition, we hope to provide valuable insights for both the manufacturer and the consumers. The study design will ensure that all metrics are collected and analyzed in a fair and consistent manner, and the results will be presented in a clear and concise manner for easy interpretation.

### Metric to be Tested:
The metric being tested is the Miles Per Gallon (MPG) of Mecha Cars, which is predicted using linear regression analysis. The summary statistics of the linear regression model are also provided.

### Null Hypothesis and Alternative Hypothesis:
The null hypothesis for the linear regression analysis is that the relationship between the dependent variable (MPG) and the independent variables (vehicle length, weight, spoiler angle, ground clearance, and all-wheel drive (AWD)) is not statistically significant. The alternative hypothesis is that the relationship between the variables is statistically significant.

### Statistical Test:
A linear regression analysis is used to test the hypothesis. This is because the dependent variable (MPG) is continuous, and the independent variables are continuous or categorical, making linear regression the appropriate statistical test for the data.

### Data Needed:
The data needed for the test includes the MechaCar_mpg.csv file, which contains the variables used in the linear regression analysis. The Suspension_Coil.csv file is also needed for the calculation of summary statistics and the t-tests on suspension coils.

## Results:
The total_summary dataframe looks like this:
![Image 1]()


#### The lot_summary dataframe looks like this:
![Image 2]()

#### Distribution of PSI by Manufacturing Lot:
![Image 3]()

#### PSI for All Manufacturing Lots:
![Image 4]()


#### Tables and data:
![Image 5]()
A linear regression model was created to predict miles per gallon (mpg) based on 5 variables (vehicle length, weight, spoiler angle, ground clearance, and all-wheel drive). The model was found to be significant with vehicle length, weight, and ground clearance having a significant effect on mpg. The residuals represent the difference between the actual and predicted mpg, and the R-squared values show the proportion of mpg variability explained by the variables.

#### more data:
![Image 6]()
A One Sample t-test was performed on a variable "suspension_coil$PSI" to determine if its mean is different from 1500. The test result showed a t-value of -1.8931, a p-value of 0.06028, and a 95% confidence interval of 1497.507 to 1500.053. The sample estimate of the mean was 1498.78. The p-value of 0.06028 means there is a 6.028% chance that the difference between the sample mean and 1500 could have occurred by chance.
