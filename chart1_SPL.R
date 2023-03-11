library(ggplot2)
library(dplyr)
library(plotly)
my_dataSet <-read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

agg_data2 <- my_dataSet %>%
  filter(MaterialType %in% c("SOUNDDISC", "VIDEODISC")) %>%
  group_by(CheckoutYear, CheckoutMonth, MaterialType) %>%
  summarize(TotalCheckouts = sum(Checkouts))

ggplot(agg_data2, aes(x = CheckoutMonth, y = TotalCheckouts, color = MaterialType)) +
  geom_line() +
  labs(x = "Month", y = "Total Checkouts", title = "Trend of Sound discs and Video discs over Time") +
  scale_x_continuous(breaks = seq(1, 12))
