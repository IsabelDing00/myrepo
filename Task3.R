#' ## Notes on reading of the 'R for Data Science'
#' 1. To explore the basic data manipulation verbs of dplyr, we’ll use nycflights13::flights.
#' This data frame contains all 336,776 flights that departed from New York City in 2013.
#' * dbl stands for double or real numbers.
#' * dttm stadns for data-times(a date + a time).
#' * lgl stands for logical, TRUE or FALSE.
#' * fctr stands for factors, which R uses to represent categorical variables with fixed possible values.
#' 
#' 2. dplyr basics.
#' * Pick observations by their values (filter()).
#' * Reorder the rows (arrange()).
#' * Pick variables by their names (select()).
#' * Create new variables with functions of existing variables (mutate()).
#' * Collapse many values down to a single summary (summarise()).
#' 
#'  These can all be used in conjunction with group_by() which changes the scope of each function from operating on the 
#'  entire dataset to operating on it group-by-group. 
#'  
#' 3. filter() allows you to subset observations based on their values. The first argument is the name of the data frame. The second and subsequent arguments 
#'  are the expressions that filter the data frame. eg. jan1 <- fliter(flights, month == 1, day == 1).
#' * x %in% y. -> This will select every row where x is one of the values in y. -> nov_dec <- filter(flights, month %in% c(11, 12))
#' * If you want to determine if a value is missing, use is.na()
#'  
library(tidyverse)
dat <- read_csv("https://byuistats.github.io/M335/data/rcw.csv", 
                col_types = cols(Semester_Date = col_date(format = "%m/%d/%y"), Semester = col_factor(levels = c("Winter", "Spring", "Fall"))))
ggplot()
ggplot(dat,aes(Semester_Date, Count, colour = Department)) + geom_line()
