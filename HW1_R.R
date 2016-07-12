#1. Write a loop that calculates 12-factorial.

x <- 1
for (i in 1:12) {
    x <- x * i
    x
}

#2. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5. 

numVector <- seq(20, 50, by=5)

#3.Show how to take a trio of input numbers a, b, and c 
# and implement the quadratic equation

quad <- function(a,b,c) {
    coef <- (b^2-4*a*c)
    if (coef > 0) {
        x1 <- (-b + sqrt(coef))/(2*a)
        x2 <- (-b - sqrt(coef))/(2*a)
        roots <- c(x1, x2)
        roots
    } else if (coef==0) {
        x1 <- (-b + sqrt(coef))/(2*a)
        roots <- c(x1)
        roots
    } else if (coef < 0) {
        x1 <- (-b + sqrt(as.complex(coef)))/(2*a)
        x2 <- (-b - sqrt(as.complex(coef)))/(2*a)
        roots <- c(x1, x2)
        roots
    }
}

## Testing
#two real numbers
quad(5,6,1)
#single solution
quad(9,12,4)
#complex solution
quad(5,2,1)