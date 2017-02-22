#Scatter diagram
plot(trees$Girth, trees$Volume, main = "girth vs. volume for black cherry trees", xlab = "Girth", ylab = "Volume")

#line diagram
plot(trees$Girth, trees$Volume, type = "l", main = "girth vs. volume for black cherry trees", xlab = "Girth", ylab = "Volume")

#histogram
par(mfrow = c(1,2))
hist(trees$Girth, main = "Distribution of girth variable", xlab = "girth")
hist(trees$Volume, main = "Distribution of volume variable", xlab = "volume")

#boxchart
par(mfrow = c(1,3))
boxplot(trees$Girth, main = "Distribution of girth variable")
boxplot(trees$Height, main = "Distribution of height variable")
boxplot(trees$Volume, main = "Distribution of volume variable")

par(mfrow = c(1,1))
boxplot(chickwts$weight ~ chickwts$feed, main = "weight by feed")

#barchart
x_lim <- c(0, 1.1*max(table(chickwts$feed)))
bar_plt <- barplot(table(chickwts$feed), main = "chicken counts by feed types", xlab = "The number of chicken", ylab = "", horiz = TRUE, las = 1, cex.names = 1, xlim = x_lim, col = "pink")
text(x = table(chickwts$feed),y = bar_plt, labels = table(chickwts$feed), pos = 4, cex = 1)

