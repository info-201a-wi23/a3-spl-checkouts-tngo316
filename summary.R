#####my_dataSet <-read.csv("~/Desktop/2022-2023-All-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

# Were people using a digital platform or physical platform for books?
total_digital_usage <- my_dataSet %>% filter(UsageClass == "Digital")

total_physical_usage <- my_dataSet %>% filter(UsageClass == "Physical")

### How many total checkouts were there total from 2022-2023?
total_checkouts <- my_dataSet %>% summarize(total_all = sum(Checkouts))

### How many ebook checkouts were there from 2022-2023?
total_ebook_checkouts <- my_dataSet %>% filter(MaterialType == "EBOOK") %>%
  summarize(total_ebook = sum(Checkouts))

answer1 <- total_ebook_checkouts/ total_checkouts
return(answer1)

### How many physical book checkouts were there from 2022-2023?
total_book_checkouts <- my_dataSet %>% filter(MaterialType == "BOOK") %>%
  summarize(total_book = sum(Checkouts))

answer2 <- total_book_checkouts/ total_checkouts
return(answer2)

### How many audio book checkouts were there from 2022-2023?
total_audiobook_checkouts <- my_dataSet %>% filter(MaterialType == "AUDIOBOOK") %>%
  summarize(total_audiobook = sum(Checkouts))

answer3 <- total_audiobook_checkouts/ total_checkouts
return(answer3)

### How many sound disc checkouts were there from 2022-2023?
total_sounddisc_checkouts <- my_dataSet %>% filter(MaterialType == "SOUNDDISC") %>%
  summarize(total_sounddisc = sum(Checkouts))

answer4 <- total_sounddisc_checkouts/ total_checkouts
return(answer4)

### How many video disc checkouts were there from 2022-2023?
total_videodisc_checkouts <- my_dataSet %>% filter(MaterialType == "VIDEODISC") %>%
  summarize(total_videodisc = sum(Checkouts))

answer5 <- total_videodisc_checkouts/ total_checkouts 
return(answer5)