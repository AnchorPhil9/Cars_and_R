# Cars_and_R

In light of production setbacks that are holding back AutosRus' MechaCar prototype, we have been tasked to get to the bottom of what has gone wrong in manufacturing.

## Linear Regression to Predict MPG
Among the variables/coefficients looked at – in addition to the intercept – the vehicle_length, ground_clearance, and vehicle_weight variables have the lowest Pr(>|t|) values. This means that those variables have more non-random influence on mpg values than the spoiler_angle and AWD variables.

Because multiple linear regression uses multiple independent variables, it is difficult to plot and tell what the slope is. However, we do have coefficient values for each variable, which tell us the extent of the relationship between the independent variable and our mpg dependent variable. If each coefficient were treated as the slope of a single linear regression model with mpg, then each resulting linear model slope would have a clear nonzero slope. Granted, vehicle_weight and spoiler_angle have smaller slopes ranging between the thousandths and hundreths, indicating that both variables have minimal impact on mpg figures.

Using the coefficient values from the multi linear regression analysis, we can determine each independent variable's relationship with mpg. Notably, there are only two variables whose coefficients lie in the thousandths and hundreths territory: vehicle_weight and spoiler_angle. With their decimal coefficients closer to zero, we can say that these 2 variables have a minimal relationship with mpg values. In the meantime, the rest of the coefficients lie in the ones territory, farther away from zero compared to the previous two variables.

As noted in 15.7.3. (2021), multiple linear regression isn't the best at predicting behaviors of data outside the current dataset. In particular, it seems odd to see that vehicle_length and ground_clearance have positive coefficients relative to mpg, especially since it implies that longer vehicles (i.e. limousines) and/or vehicles with big ground clearance (i.e. a Monster Truck) have better fuel mileage than other cars. At the very least, the negative AWD coefficient makes more sense, since AWD cars need more energy (and fuel) to get the car moving than 2WD cars, as noted by Doug Demuro (2019). Not to mention that this analysis does not factor in engine characteristics like fuel displacement or hybrid setups.

## References
Doug Demuro source: https://www.autotrader.com/car-tips/why-you-should-avoid-all-wheel-drive-unless-you-need-it-226433
