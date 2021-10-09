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