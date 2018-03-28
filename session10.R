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

cat(email[1])

header1 = str_sub(string=email[1], start=1, end=min(str_locate(string=email[1],pattern = "\n\n")))
cat(header1)

body=str_sub(email[1],
             start=843)
cat(body)
emailheaders = str_sub(email, start=1, end=min(str_locate(string=email,pattern = "\n\n")))
emailbody = str_sub(email, start=str_locate(string=email,pattern = "\n\n")+1)

breaks = str_locate(email, "\n\n")

headers = str_sub(email, start=1, end = breaks[,1])
bodies = str_sub(email, start=breaks[,1])

cat(headers)
cat(bodies[1])
cat(emailbody[1])

fruits = c("apple", "banana", "pear", "pineapple")

str_detect(fruits, "a")
str_detect(fruits, "^a")
str_detect(fruits, "a$")
str_detect(fruits, "[aeiou]") #looks for "or" any of the items
str_detect(fruits, "^a[a-z]*e$") 

phone = c("213 740 4826", "213-740-4826"
          ,"(213) 740 4826")
str_extract_all(bodies, "[(]?[0-9]{3}[)]?[ -]?[0-9]{3}[ -]?[0-9]{4}")
