install.packages(c("car","ggplot2"))
library(ggplot2)
library(car)

uni_df <- data.frame(
  University   =   c(rep("A",8),rep("B",10),rep("C",9)),
  Study   =	c(6.4,6.5,5.2,7.5,4.9,6.0,5.6,5.9,
              4.2,5.1,6.0,4.4,5.0,6.9,7.0,6.8,5.5,5.1,
              8.3,8.1,8.0,5.2,6.7,7.2,7.7,7.1,8.3))

ggplot2::ggplot(uni_df, aes(sample=Study)) +
  stat_qq() +
  stat_qq_line(aes(color="red")) +
  facet_wrap( ~ University, nrow = 1) +
  theme( legend.position = "none")

for (university in c("A","B","C")) {
  print(shapiro.test(uni_df[uni_df$University == university,"Study"]))
}

ggplot(uni_df, aes(x=University, y=Study, fill=University)) +
  geom_boxplot()

bartlett.test(Study ~ University, data=uni_df)

levene.test(Study ~ University, data=uni_df)