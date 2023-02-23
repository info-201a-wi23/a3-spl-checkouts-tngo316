library(ggplot2)
library(dplyr)
my_dataSet <-read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

agg_data1 <- my_dataSet %>%
  filter(MaterialType %in% c("AUDIOBOOK", "EBOOK", "BOOK")) %>%
  group_by(CheckoutYear, CheckoutMonth, MaterialType) %>%
  summarize(TotalCheckouts = sum(Checkouts))

chart2 <- ggplot(agg_data1, aes(x = CheckoutMonth, y = TotalCheckouts, color = MaterialType)) +
  geom_line() +
  labs(x = "Month", y = "Total Checkouts", title = "Trend of Audio Books, Ebooks, and Books Checkouts over Time") +
  scale_x_continuous(breaks = seq(1, 12))
 
