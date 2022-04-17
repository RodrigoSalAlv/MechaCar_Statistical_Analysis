# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/96214489/163726684-7ee6035c-f392-4e75-bd6e-8f6cc0624087.png)

The variables that provided a non-random amount of variance to the mpg dataset are the vehicle_weight and spolier_angle, this is because the slope of those two variables are nearly to zero, any changes in them will not affect the mpg result.

The slope cannot be considered as zero because, in this case, even the slightest change in any characteristic of the vehicle will gave us an mpg difference

If we assume that all this variables are the only ones that affect the mpg results, I would consider that this model will help to predict mpg of MechaCars prototypes effectively. In this cases I think that even tough the slope of every variable tends to zero, the minimum change will affect the mpg result

## Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/96214489/163727994-66453c90-d7a1-481f-a6d4-9a4c91f3579b.png)

If we rely in the total summary information we could assume that we cover the specifications required to the MechaCar where the variance of suspension coils didn't exceed the 100 PSI's

![image](https://user-images.githubusercontent.com/96214489/163728141-ca7e13e0-9593-47e6-b430-e1a64728e29e.png)

However seeing the detailed information regarding the lots, we can see that in the first two lots the variance is minimal compared to the variance of the Lot 3. 

## T-Tests on Suspension Coils
![image](https://user-images.githubusercontent.com/96214489/163729390-d0967154-2a92-482c-b767-9bb6c3ca9a34.png)
We can realize that of all the lots, Lot3 is the one that is statistically more different from the rest, this due to the fact that the p-value is only 4%, the hypothesis that "all the values of batch 3 are equal to the mean of 1500" is rejected

## Study Design: MechaCar vs Competition
Today, most people live in large cities, so when choosing a car, people look for the car to be efficient with gasoline and to emit the least amount of pollutants as possible.
In the study we need to compare that two variables: fuel efficency and quantity of pollutants emition. we need to proof that MechaCar use less fuel in the city and emits less pollution than the competition. The null hypothesis could be that the MechaCar performance is the same as the competition or worst performance as an alternate hypothesis.
For this case the appropriate statistical test we need to use is the One-Sample t-Test, to compare the results of city fuel efficiency against the mean of the competition and the quantity of pollutants emition against the mean of the competition. If we a third variable called highway fuel efficiency we can compare if the efficiency has a corelation with the pollitants emition as well.
For all metrics we need the data type we need is numerical continuous, because we can run as many test to measure this metrics as we need.
