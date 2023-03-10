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
![Image 1](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/de5e559fb47e8ec9e159843b2896e4f25d654e92/Challenge%2016/Resources/total_summary.jpg)


#### The lot_summary dataframe looks like this:
![Image 2](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/de5e559fb47e8ec9e159843b2896e4f25d654e92/Challenge%2016/Resources/lot_summary.jpg)

#### Distribution of PSI by Manufacturing Lot:
![Image 3](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/5f6d815b49498a74b1f036bd0087c733ae4398a9/Challenge%2016/Resources/BoxPlot%20of%20Distribution%20of%20PSI%20by%20Manufacturing%20Lot.pdf)

#### PSI for All Manufacturing Lots:
![Image 4](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/5f6d815b49498a74b1f036bd0087c733ae4398a9/Challenge%2016/Resources/BarPlot%20Histogram%20of%20PSI%20for%20All%20Manufacturing%20Lots.pdf)

#### Tables and data:
![Image 5](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/de5e559fb47e8ec9e159843b2896e4f25d654e92/Challenge%2016/Resources/Tables%20and%20data.jpg)
A linear regression model was created to predict miles per gallon (mpg) based on 5 variables (vehicle length, weight, spoiler angle, ground clearance, and all-wheel drive). The model was found to be significant with vehicle length, weight, and ground clearance having a significant effect on mpg. The residuals represent the difference between the actual and predicted mpg, and the R-squared values show the proportion of mpg variability explained by the variables.

#### more data:
![Image 6](https://github.com/Sergg99/Statistical-Analysis-Using-R/blob/de5e559fb47e8ec9e159843b2896e4f25d654e92/Challenge%2016/Resources/Data%202.jpg)
A One Sample t-test was performed on a variable "suspension_coil$PSI" to determine if its mean is different from 1500. The test result showed a t-value of -1.8931, a p-value of 0.06028, and a 95% confidence interval of 1497.507 to 1500.053. The sample estimate of the mean was 1498.78. The p-value of 0.06028 means there is a 6.028% chance that the difference between the sample mean and 1500 could have occurred by chance.
