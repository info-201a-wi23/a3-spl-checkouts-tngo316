library(ggplot2)
library(dplyr)
library(plotly)
my_dataSet <-read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

data_for_2022 <- my_dataSet %>% filter(CheckoutYear == "2022")

chart1 <- ggplot(data_for_2022) + geom_col(aes(x = CheckoutMonth, y = Checkouts, fill = UsageClass)) + 
  scale_color_brewer(palette = "Set1") +
  labs(title = "Ebooks Checkouts vs. Books Checkouts", x = "Months", y = "Number of Checkouts") + 
  scale_x_continuous(breaks = seq(1, 12))

ggplotly(chart1)

