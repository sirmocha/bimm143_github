source("http://thegrantlab.org/misc/cdc.R")

View(cdc)
head(cdc$height)
tail(cdc$height, n=20)
plot(cdc$height, y = cdc$weight, xlab = "Height(inches)",
     ylab="Weight(pounds)")
hi_weigh_corr <- cor(cdc$height, cdc$weight)
hist(cdc$weight)
hist(cdc$height)
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight/2.2
bmi <- weight_kg/(height_m^2)
plot(cdc$height, bmi)
hi_bmi_corr <- cor(cdc$height, bmi)
head(bmi >= 30, 100)
sum(bmi >= 30)
sum(bmi >= 30)/length(bmi)
(sum(bmi >= 30)/length(bmi)) * 100
round( (sum(bmi >= 30)/length(bmi)) * 100, 1)
cdc[567, 6]
cdc[1:10, 6]
cdc[1:10, ]
plot(cdc[1:100,]$height, cdc[1:100,]$weight, 
     xlab="height(inches)", ylab="Weight(lbs)")
obese <- bmi >= 30
gender <- cdc$gender
data <- data.frame(gender=gender, obese=obese)
table(data$gender, data$obese)
