library(ggplot2)
library(magrittr)
library(dplyr)

diamonds2 <- diamonds %>% filter(between(y, 3, 20)) #把3<x<20以外的都删掉了
diamonds2 <- diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y)) #把3<x<20以外全部赋值成NA
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point()#display warning
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point(na.rm = TRUE)# To suppress that warning

