
library(datasets)
data("airquality")

#airquality = read.csv('path/airquality.csv' ,header=TRUE ,sep=",")

airquality <- datasets::airquality

head(airquality)
tail(airquality)
airquality[,c(1,2)]
airquality$Ozone
################################
summary(airquality$Temp)
summary(airquality)

###############################
plot(airquality$Ozone)
plot(airquality$Ozone ,airquality$Temp)
plot(airquality)

#######points and lines
plot(airquality$Ozone, type = "b")      #p: points, l: lines, b: both
plot(airquality$Ozone, xlab = 'ozone concentration',
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'red')

####################Horizontal Bar Plot
barplot(airquality$Ozone, main = 'Ozone concentraation in air',
        xlab = 'ozone levels', col = 'green', horiz = F)     #horiz value could be True/False


###########Histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R,
     main = 'Solar radiation value in air',
     xlab = 'Solar rad.', col = 'yellow')

#########Single Box plot
boxplot(airquality$Solar.R)

########Multiple Box Plot
boxplot(airquality)
boxplot(airquality[,1:4],
        main = 'Multiple plot',
        col = 'red')
#Margin of the grid(mar),
#no of rows and columns(mfrow),
#whethera boarder is to be included(bty),
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vefrtical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1), las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")

barplot(airquality$Ozone, main = 'Ozone concentraation in air',
         xlab = 'ozone levels', col = 'green', horiz = T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main = 'Multiple Box plots')