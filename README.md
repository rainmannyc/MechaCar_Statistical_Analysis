# Linear Regression to Predict MPG

## Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

According to our model, there were two features which provided a low amount of variance to the linear model. 

* vehicle_length with a Pr(>|t|) value of 2.60e-08
* ground_clearance with a Pr(>|t|) value of 5.21e-08


This indicates these two features did not have a significant impact on mpg values.

The most significant values found in our analysis was the spoiler_angle, AWD, and vehicle weight features.


## Is the slope of the linear model considered to be zero? 
The slope of the model is not considered to be zero since our p-value is 5.35e-11, which is much smaller than the standard significance value of 0.05. Our model is indicating that there is sufficient statistical evidence to state that our null hypothesis is not true.

![mecha_lin](https://github.com/rainmannyc/MechaCar_Statistical_Analysis/blob/2b473b2ea7c6c3836ee196a553640e9630a0db09/lm_mecha_car.png)

## Does this linear model predict mpg of MechaCar prototypes effectively?


With the model having a Multiple R-squared score of 0.7149, meaning it will approximate real world data points accurately 71%. I would say this is effective at a decent rate but can definitely be improved possibly with more features added into our multiple regression model. However, this can also possibly indicate that the model is not overfit.

![mecha_lin_summary](https://github.com/rainmannyc/MechaCar_Statistical_Analysis/blob/2b473b2ea7c6c3836ee196a553640e9630a0db09/lm__summary_mecha_car.png)

# Summary Statistics on Suspension Coils

## Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?

The current manufacturing data does meet the design specifications as a whole. However, individually, Lot 3 is significantly over the limit. 


I found Lot 3 appears to be over the PSI Variance limit by 70 and significantly higher than the other two lots. This analysis may need a closer look into the manufacturing details of Lot 3 specifically.

![suspension_coils](https://github.com/rainmannyc/MechaCar_Statistical_Analysis/blob/2b473b2ea7c6c3836ee196a553640e9630a0db09/mecha_suspension.png)

# T-Tests on Suspension Coils

Our initial analysis found that for our first t-test across all three manufacturing lots, there is no statistical difference between the observed sample mean and its presumed population mean. This is indicated by a p-value of the t-test being 0.06 which is above our significance level of 0.05. 

However, when we ran our t-test analysis across the three lots individually, we did find different results. We found a p-value for Lot 3 in to be at 0.041, which is lower than our significance level of 0.05. this would indicate to us that we do have sufficient evidence to reject the null hypothesis, and that there <i>is</i> a statistical difference between the observed sample mean and it's presumed population mean. 

![t_tests](https://github.com/rainmannyc/MechaCar_Statistical_Analysis/blob/2b473b2ea7c6c3836ee196a553640e9630a0db09/t_test.png)

# Study Design: MechaCar vs Competition

We can look to quantify how the MechaCar performs against the competition by measuring a variety of metrics and features. One of the most significant metrics across all consumers I believe would be general fuel efficiency and mpg.
I believe this can be a big buying point for consumers who are looking at the overall cost of owning a car. 

Another metric we consumers might be interested in is safety rating. If we can find a statistical difference in our MechaCar safety rating versus the competition with more positive results, this can greatly influence consumer decisions. 

We can check to see if our variety of metrics and features are different or not different from the competition in our null hypothesis with data of our competition vehicles. 


We can run a multiple array of statistical tests from one sample t-test to two sample t-test to the ANOVA test and into linear regression models. 
