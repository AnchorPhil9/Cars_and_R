# We'll read the csv data with read.csv, as we've done in 15.2.3 (2021).
Cars <- read.csv("MechaCar_mpg.csv", header=T, sep=",", check.names=F, stringsAsFactors = F)

# We'll perform multiple linear regression as seen in 15.7.3 (2021).
# We are interested in seeing how a car's attributes affect its fuel mileage.
# As such, 'mpg' is the variable we want to test against 5 other car attributes.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Cars)

# Next, we'll find the p-value and r-squared value of our regression model ("15.7.3", 2021).
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Cars))
# Here, we get a p-value of 5.35e-11 and an R-Squared value of 0.7149.

# Now we'll read csv data about suspension coils.
Coils <- read.csv("Suspension_Coil.csv", header=T, sep=",", check.names=F, stringsAsFactors = F)

# Per the Module 15 Challenge (2021), we'll need some tidyverse tools described in 15.2.5 (2021) to clean up the Coil data
library(tidyverse)
# We'll use the summarize() function like we did in 15.2.5 (2021).
total_summary <- Coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Now we'll make a new lot summary, where we group by the vehicle lot and summarize each lot's PSI.
lot_summary <- Coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Continuing the analysis, we'll have to perform t-test to see if each manufacturing lot's mean PSI is
# statistically different from the population mean of 1,500.
# We'll need subsets of the coil dataset for each manufacturing lot, which
# we'll acquire via refactored code from 15.2.4 (2021).
lot_1 <- subset(Coils, Manufacturing_Lot == "Lot1")
lot_2 <- subset(Coils, Manufacturing_Lot == "Lot2")
lot_3 <- subset(Coils, Manufacturing_Lot == "Lot3")

# Now we refactor 15.6.2 (2021) code for our respective t-tests.
t.test(log10(lot_1$PSI), mu=1500)
t.test(log10(lot_2$PSI), mu=1500)
t.test(log10(lot_3$PSI), mu=1500)
