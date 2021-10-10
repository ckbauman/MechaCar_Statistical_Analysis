# MechaCar_Statistical_Analysis
Module 15

## Overview
The AutosRUs' MechaCar prototype is having some production troubles which are blocking the manufacturing team's progress.  We are reviewing the Production Data to review linear regression for mpg, collect summary statistics on the suspension coils, run t-tests on manufacturing lots and create a comparison of MechaCar performance vs. the competition.

## Results
### Linear Regression to Predict MPG (Deliverable 1)

![linear](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/linear.png)

- Which variable/coefficents provided a non-random amount of variance to the mpg values in the dataset?
    - The p-values for vehicle_weight, spoiler_angle and AWD were all larger then the significance level of 0.05, therefore they are considered non-random.  The p-values for vehicle_length and ground_clearance were very small so considered random.
- Is the slope of the linear model considered to be zero? Why or why not?  
    - We calculated the slope for all of the variables using the lm() function.  None of them are zero, therefore the slope of the line is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? why or why not?
    - The r-squared value is 0.71 which shows a Strong probability the mpg testing is helpful.

### Summary Statistics on Suspension Coils (Deliverable 2)

Total_Summary Results:

![total_sum](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/total_sum.png)

Lot_Summary Results:

![lot_sum](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/lot_sum.png)

- The design specs for mechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI.  Does the current mfg data meet this design spec for all mfg lots in total and each lot individualy? why or why not?
    - overall variance of 62.29 - therefore does not exceed 100 PSI
    - Lot 1 variance of 0.98 - therefore does not exceed 100 PSI
    - Lot 2 variance of 7.47 - therefore does not exceed 100 PSI
    - Lot 3 variance of 170.29 - therefore DOES exceed 100 PSI.

### T-Tests on Suspension Coils (Deliverable 3)

PSI results for ALL mfg lots compared to population mean of 1,500 PSI:

![all_ttest](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/all_ttest.png)

PSI results for Lot 1 compared to mean of 1,500:

![lot1_ttest](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/lot1_ttest.png)

PSI results for Lot 2 compared to mean of 1,500:

![lot2_ttest](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/lot2_ttest.png)

PSI results for Lot 3 compared to mean of 1,500:

![lot3_ttest](https://github.com/ckbauman/MechaCar_Statistical_Analysis/blob/main/lot3_ttest.png)

- Using your knowledge or R, perform t-test to determine if all mfg lots and each lot individually are statistically different from the population mean of 1,500 PSI.
    - The p-value overall is 0.06.  This is slightly larger then the significance level of 0.05. Therefore do not have sufficient evidence to reject null hypothesis.  So the 2 means are statistically similar
    - The p-value for Lot 1 is 1.  This is larger then significance level of 0.05.  So the 2 means are satistically similar.
    - the p-value for Lot 2 is 0.61.  This is larger then significance level of 0.05.  So the 2 means are statistically similar.
    - The p-value for Lot 3 is 0.04. This is smaller then significance level of 0.05.  Therefore we have sufficient eveidence to reject null hypothesis.  So the 2 means are NOT statistically similar

### Study Design: MechaCar vs Competition (Deliverable 4)
- Description of a statistical study that can QUANTIFY how the MechaCar performs against the competition. In your study design think critically about what metrics would be of interest to a consumer:
    - e.g. cost, city or hwy fuel efficiency, hp, maint. cost, safety rating

- MAIN PART:  Address the following
    - what metric(s) are you going to test?
        - Competition metrics should inlude cost, mpg and durability (maintenance costs)
    - what is the null hypothesis or alternative hypothesis?
        - Null Hypothesis would be that cost, mpg, durability are the same
        - Alternative Hypothesis is that cost, mpg, durability are Not the same
    - what statistical test would you use to test the hypothesis? and why?
        - We could use chisq.test() to test parameters across 2 groups of tests
    - what data is needed to run the statistical test?
        - We will need cost, mpg, maintenance costs

## Summary
This was an overview for Module 15 in R and R Studio and Statistial Analysis
