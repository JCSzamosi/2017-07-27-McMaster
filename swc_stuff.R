# read the data file
cats = read.csv(file = "feline-data.csv")
# add age information
age = c(4,5,8)
cats = cbind(cats,age)
newRow <- list("tortoiseshell",3.3,TRUE,9)
levels(cats$coat) <-
	c(levels(cats$coat),"tortoiseshell")
cats = rbind(cats,newRow)

## moving on to gapminder example
gapminder <- read.csv("gapminder-FiveYearData.csv"nrow(gapminder)
ncol(gapminder)
dim(gapminder)
names(gapminder)
head(gapminder)
head(gapminder,2)
tail(gapminder,2)
gapminder$country

## moving on to subsettting stuff

x = c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) = c("a","b","c","d","e")
x[1:5]
x[c(2,5)]

## negative indexing
x[-3]
x[-c(1,4)]

## indexing by name
x["a"]
x[c("a","e")]
x[c("e","a")]

##
x[c(TRUE,FALSE,TRUE,FALSE,FALSE)]
x>7
x[x>7]
y = c(1,8,1,3,2)
x[y>7]

cats[cats$weight>4,]

cats$coat=="calico" | cats$coat=="tabby"
cats$coat %in% c("calico","tabby")
not_ct = !(cats$coat %in% c("calico","tabby"))
cats[not_ct,]
