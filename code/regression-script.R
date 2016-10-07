ad_data <- read.csv("data/Advertising.csv")

reg_obj <- lm(ad_data$Sales ~ ad_data$TV, data = ad_data)
reg_sum <- summary(reg_obj)

save(reg_sum, reg_obj, file = "data/regression.RData")

png("images/scatterplot-tv-sales.png")
plot(ad_data$Sales ~ ad_data$TV, main= "TV Ad Budget vs Product Sales", xlab= "Ad Budget in Thousands of Dollars", ylab = "Thousands of Unit Sales")
abline(reg_obj, col = "darkturquoise", lwd = 5)
dev.off()

pdf("images/scatterplot-tv-sales.pdf")
plot(ad_data$Sales ~ ad_data$TV, main= "TV Ad Budget vs Product Sales", xlab= "Ad Budget in Thousands of Dollars", ylab = "Thousands of Unit Sales")
abline(reg_obj, col = "darkturquoise", lwd = 5)
dev.off()