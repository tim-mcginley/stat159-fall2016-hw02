ads <- read.csv("data/Advertising.csv")

TV_sum <- summary(ads$TV)
Sales_sum <- summary(ads$Radio)
sink('data/eda-output.txt')
print('TV Data Summary:')
TV_sum
print('Sales Data Summary:')
Sales_sum
sink()
  
png("images/histogram-tv.png")
hist(ads$TV, breaks = 12, xlab = "TV Advertising budget by Product", main = 'Investment in TV Ads')
dev.off()

pdf("images/histogram-tv.pdf")
hist(ads$TV, breaks = 12, xlab = "TV Advertising budget by Product", main = 'Investment in TV Ads')
dev.off()


png("images/histogram-sales.png")
hist(ads$Sales, breaks = 12, xlab = "Thousands of Units of Sales", main = "Sales by Product")
dev.off()

pdf("images/histogram-sales.pdf")
hist(ads$Sales, breaks = 12, xlab = "Thousands of Units of Sales", main = "Sales by Product")
dev.off()