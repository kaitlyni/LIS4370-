Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1) #bad = 1, good = 0
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1) #high = 1, low = 0
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) #high = 1, low = 0

df1 <- data.frame(Frequency, BP, First, Second, FinalDecision)
df1

#Create a side by side boxplot and histogram

boxplot(BP ~ First, data = df1, col = "pink")

boxplot(BP ~ Second, data = df1, col = "lightblue")

boxplot (BP ~ FinalDecision, data = df1, col = "lightgreen")

hist(BP, col = "plum")

