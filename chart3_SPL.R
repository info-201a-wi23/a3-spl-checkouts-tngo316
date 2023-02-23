library(ggplot2)
library(dplyr)
library(plotly)
my_dataSet <-read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

subset_data <- subset(my_dataSet, MaterialType %in% c("AUDIOBOOK", "BOOK", "EBOOK", "SOUNDDISC", "VIDEODISC"))

agg_data <- subset_data %>%
  group_by(MaterialType) %>%
  summarize(TotalCheckouts = sum(Checkouts))

# Create a bar chart
chart3 <- ggplot(agg_data, aes(x = MaterialType, y = TotalCheckouts, fill = MaterialType)) +
  geom_bar(stat = "identity") +
  labs(x = "Material Type", y = "Total Checkouts", fill = "Material Type") +
  ggtitle("Total Checkouts by Material Type")

ggplotly(chart3)

