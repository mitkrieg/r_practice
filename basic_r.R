#simple math
2+2

#vairable assignment
my_number <- 2+2

#vector/list/array
vector_example <- c(2,1,2,3,1,2,3,1)

scaler_mult <- vector_example * 1.2

#dataframe
df <- data.frame(vector_example,scaler_mult)
df

#slicing dataframe
df[3,] #third row
df[,2] #2nd column
df$scaler_mult #column titled scaler_mult
df[1,2] #1st row, 2nd col

#acccess functions from package 
dplyr::if_else()
base::sum() #base package is built in and you don't need base::


#writing custom functions
#general form
custom_function <- function() {}

#example custome function that converts farienheight to celcius
# where temp is input variable and code goes inside {}
to_fahrenheiht <- function(temp) {
  cel <- (temp -32) / 1.8
  cel
}

#import package
library(htmltools)

