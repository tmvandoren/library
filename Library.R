library(ggplot2)

setwd("/Users/taylorvandoren/Documents/Github/library")
data <- read.csv("library.csv")
colnames(data) <- c("last", "first", "title", "published", "genre", "read", "length", "botm", "aard", "duplicates", "tbr", "rating")

ggplot(data, aes(x = published, y = length, color = read)) +
  geom_point(shape = 16, size = 2, alpha = 0.3) +
  geom_smooth(alpha = 0) +
  theme_minimal() +
  scale_color_brewer(palette = "Dark2") +
  xlim(1500,2024)

data$pub.fact <- as.factor(data$published)
ggplot(data, aes(x = published, color = read, fill = read)) +
  geom_bar(position = "stack", alpha = 0.5) +
  xlim(1800, 2024) +
  theme_minimal() +
  scale_color_brewer(palette = "Dark2") +
  scale_fill_brewer(palette = "Dark2")

ggplot(data, aes(x = read)) +
  geom_bar()
