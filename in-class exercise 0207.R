
library(gcookbook) # for the dataset. pg_mean dataset is avialbe in this library.
library(ggplot2)
ggplot(pg_mean, aes(x=group, y=weight)) + geom_bar(stat = "identity")
BOD # there is not entry for Time == 6 ... did you see that ? 
# Time is numeric (continuous)
str(BOD)
ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat = "identity")
# Convert Time to a discrete (categorical) variable with factor() function.
ggplot(BOD, aes(x=factor(Time), y=demand)) + geom_bar(stat = "identity")
# change the color of the bars and add an outline to the bars
# NOTE: In ggplot2, the default is to use the British spelling, colour, instead of
# the American spelling, color.
ggplot(pg_mean, aes(x=group, y=weight)) +geom_bar(stat = "identity", fill="lightblue", colour = "red")
ggplot(BOD, aes(x=factor(Time), y=demand)) +geom_bar(stat = "identity", fill="orange", colour = "red")

ggplot(cabbage_exp, aes(x=Date, fill=Cultivar)) + geom_bar(position = "dodge")

#library(gcookbook)  For the data set
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  geom_bar(stat="identity")

# Making Bar Graph of Counts
ggplot(diamonds, aes(x=cut)) +geom_bar() # this is equvalent to using geom_bar(stat="bin)
# The diamonds data set has 53,940 rows, each of which represents information about one
data("diamonds")
diamonds
# In this example, the variable on the x-axis is discrete. If we use a continuous variable on
# the x-axis, we’ll get a histogram
ggplot(diamonds,aes(x=carat)) + geom_bar()
# It turns out that in this case, the result is the same as if we had used geom_histogram() instead of geom_bar()

