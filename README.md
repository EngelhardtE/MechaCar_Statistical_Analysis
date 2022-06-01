# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- There is a non-random amount of variance within the following: vehicle_weight, vehicle_length, and ground clearance.
- THe slope of the linear regression is not zero because the p-value is equal to 5.35 x 10^(-11), which is less than the 0.05% significance level.
- Based on the multiple R-squared (about 71.5%), the linear model predicts mpg of MechaCar prototypes effectively.

![Linear_Regression](Resources/Images/Linear_Regression.png)


## Summary Statistics on Suspension Coils

It is specified that the PSI of suspension coils should not exceed 100. When examining each lot individually, it is seen that the variance for lots 1 and 2 meet this requirement. However, lot 3's variance exceeds 100 PSI. <br></br>
![Lot_Summary](Resources/Images/Lot_Summary.png)<br></br>

When looking at all 3 lots summarized, it is shown that the PSI of the suspension coils meets the specification, as the variance is only about 62.3. <br></br>
![Total_Summary](Resources/Images/Total_Summary.png)<br></br>

## T-Tests on Suspension Coils

