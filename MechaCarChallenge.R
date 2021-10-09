# Deliverable 1
# 3. load dplyr package
library(dplyr)

# 4. import and read the MechaCar_mpg.csv file as a dataframe
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mecha_table)

# 5. perform linear regression using lm() function.
# in the lm() funciton, pass in all six variables (i.e., columns) and add the dataframe
# from step 4 as a data parameter (refer to 15.7.3)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)

# 6. Using the summary() function, determine the p-value and the r-squared value for the 
# linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table))

#Output:  p-value: 5.35e-11
#Output:  r-squared:  0.6825

# Deliverable 2
# 2. Import and read in the Suspension_Coil.csv file
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(coil_table)

# 3. Write an RScript that creates a total_summary dataframe using the summarize()
# function to get the mean, median, variance, and standard deviation of the suspension
# coil's PSI column

# import tidyverse library
library(tidyverse)

# summary table
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))

# 4. Write an RScript that creates a lot_summary dataframe using the group_by and the summarize() functions to
# group each mfg lot by the mean, median, variance and std dev of the PSI column.
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI), .groups = 'keep')






