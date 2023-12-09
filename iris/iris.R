# iris
# ggplot2のインストール
install.packages("tidyverse")
library(ggplot2)

setwd("~/iris")
getwd()

# list.files()

# データの読み込み
train = read.table("train.tsv", header = TRUE, sep = "\t")
test = read.table("test.tsv", header = TRUE, sep = "\t")
sample_submit = read.csv("sample_submit.csv", header = FALSE)

# 棒グラフ
ggplot(train, aes(x = class)) + geom_bar()
# ggplot(train, aes(x = factor(class))) + geom_bar()
ggplot(train, aes(x = class, fill = class)) + geom_bar()

# 散布図
ggplot(train, aes(x = sepal.length.in.cm, y = sepal.width.in.cm)) + geom_point()
ggplot(train, aes(x = sepal.length.in.cm, y = sepal.width.in.cm, colour = class)) + geom_point()

# ヒストグラム
ggplot(train, aes(x = sepal.length.in.cm)) + geom_histogram()
ggplot(train, aes(x = sepal.length.in.cm)) + geom_histogram(bins = 10)
ggplot(train, aes(x = sepal.length.in.cm, fill = class)) + geom_histogram(bins = 10)
ggplot(train, aes(x = sepal.length.in.cm, fill = class)) + geom_histogram(position = "identity", alpha = 0.5, bins = 10)

# 密度曲線
ggplot(train, aes(x = sepal.length.in.cm, fill = class)) + geom_density()
ggplot(train, aes(x = sepal.length.in.cm, fill = class)) + geom_density(alpha = 0.5)

# 箱ひげ図
ggplot(train, aes(x = class,y = sepal.length.in.cm)) + geom_boxplot()
ggplot(train, aes(x = class,y = sepal.length.in.cm)) + geom_boxplot() + stat_summary(fun.y = "mean", shape = 23, fill = "white")

# バイオリンプロット
ggplot(train, aes(x = class,y = sepal.length.in.cm)) + geom_violin()
ggplot(train, aes(x = class,y = sepal.length.in.cm)) + geom_violin() + geom_boxplot(width = .1, fill = "black", outlier.color = NA) + stat_summary(fun.y = "median", shape = 21, fill = "white")

# 密度プロット
ggplot(train, aes(x = sepal.length.in.cm, y = sepal.width.in.cm)) + geom_point() + stat_density2d()
ggplot(train, aes(x = sepal.length.in.cm, y = sepal.width.in.cm, colour = class)) + geom_point() + stat_density2d()
