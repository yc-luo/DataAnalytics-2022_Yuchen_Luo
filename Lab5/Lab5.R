# Outlier Detection using "Cooks Distance"
#Multivariate Regression using Cook's Distance

library(ISLR)
# Let's look at the baseball hitters dataset in ISLR package.
head(Hitters)
dim(Hitters)
is.na(Hitters) # check for the missing values

HittersData <- na.omit(Hitters)
dim(HittersData) # checking the dimensions after removing the NAs
glimpse(HittersData)
head(HittersData)

SalaryPredictMode11 <- m(Salary ~., data = HittersData)
summary (SalaryPredictModel1)

cooksD<-cooks.distance(SalaryPredictModel1)
influential <- cooksD[(cooksD>(3* mean(cooksD, na.rm = TRUE)))]
influential

names_of_influential <- names(influential) # checking the names of the influential/outlier players
names_of_influential
outliers <- HittersData[names_of_influential,]
Hitters_Without_Outliers <- HittersData %>% anti_join(outliers)
# Model 2: without the outliers
SalaryPredictMode12 <- Im(Salary~.,data = Hitters_Without_Outliers)
summary (SalaryPredictModel2)
