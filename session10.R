email = readRDS("email.rds")
install.packages("stringr")
library(stringr)
print("\"")
cat("\"") #print a single quotation mark
cat("DSO\n545")
print("DSO
      545")
#create the following in R

cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

?str_locate()
?str_sub()

str_locate(string = "great, mate, hate, bait",pattern = "c")
str_sub(string = "testing",start = 1,end = 3)
str_sub(string = "testing",start = 4,end = 7)
str_sub(string = "testing",start = 1,end = 4)

input = c("abc", "defg")
str_sub(input, c(2,3))

email
