#In-class
# PCA with iris dataset
data("iris")
head(iris)
# creating another dataset from iris dataset that contains the columns from 1 to 4 irisdata1 <- iris[,1:4]
irisdata1
head(irisdata1)
principal_components <- princomp(irisdata1, cor = TRUE, score = TRUE)
summary(principal_components)
# in the summary you can see that it has four Principal Components it is becasue the input data has
# four different features.
# using the plot() function, we can plot the principal components. 
plot(principal_components)
# plotting the principal_components using the a line in plot() functions 
plot(principal_components, type = "l")
# using rhw biplot() function we can plot the components 6 
biplot(principal_components)


#Lab Work
#wine
wine_data <- read.table("http://archive.ics.uci.edu/ml/machine- learning-databases/wine/wine.data", sep = ",")
head(wine_data)
nrow(wine_data)
colnames(wine_data) <- c("Cvs", "Alcohol",
                         "Malic_Acid", "Ash", "Alkalinity_of_Ash",
                         "Magnesium", "Total_Phenols", "Flavanoids", "NonFlavanoid_Phenols", "Proanthocyanins", "Color_Intensity", "Hue", "OD280/OD315_of_Diluted_Wine", "Proline")
head(wine_data) # Now you can see the header names.

heatmap(cor(wine_data),Rowv = NA, Colv = NA)
cultivar_classes <- factor(wine_data$Cvs) 
cultivar_classes
wine_data_PCA <- prcomp(scale(wine_data[,-1]))
summary(wine_data_PCA)


# Chapter4_Line_Graphs_R_Graphics
library(gcookbook)
ggplot(BOD, aes(x=Time, y=demand)) + geom_line()
BOD
BOD1 <- BOD # make a copy of the dataset
BOD1$Time <- factor(BOD1$Time)
ggplot(BOD1, aes(x=Time, y=demand, group=1)) + geom_line()
ggplot(BOD, aes(x=Time, y= demand)) +geom_line() + ylim(0, max(BOD$demand)) ggplot(BOD, aes(x=Time, y=demand)) +geom_line() + expand_limits(y=0)
# Adding points to a line graph
ggplot(BOD, aes(x=Time, y=demand)) + geom_line() + geom_point()
library(gcookbook) # For the data set
ggplot(worldpop, aes(x=Year, y=Population)) + geom_line() + geom_point()
# same with log-y axis
ggplot(worldpop, aes(x=Year, y=Population)) + geom_line() + geom_point() + scale_y_log10()