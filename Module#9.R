install.packages("lattice")
library(lattice)
library(ggplot2)
library(readr)

my_data <- read_csv("CigarettesB.csv")

#Basic R
plot(my_data$price, my_data$packs,
     main = "Cigarette Price vs Packs",
     xlab = "Price", 
     ylab = "Packs Consumed",
     col = "lightgreen",
     pch = 19)

#Lattice
histogram( ~ packs, data = my_data,
           main = "Distribution of Packs Consumed",
           xlab = "Packs",
           col = "lightpink")

#ggplot2
ggplot(my_data, aes(x = price, y = packs, color = income)) +
  geom_point(size = 3) +
  scale_color_gradient(low = "lightpink", high = "purple") +
  labs(title = "Packs Consumed vs Price",
       x = "Price",
       y = "Packs Consumed",
       color = "Income")


