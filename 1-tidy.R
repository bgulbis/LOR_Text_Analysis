# tidy

source("0-library.R")

raw1 <- read_data("data", "lor_2015") %>%
    select(-matches("_([4-9]|[0-9]{2})$"))
raw2 <- read_data("data", "lor_2016")

tmp <- !(colnames(raw2) %in% colnames(raw1))
colnames(raw2)[tmp]

