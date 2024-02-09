## create R data objects

## vector object

# we use c() to create a vector object

Names = c('John', 'Daniel', 'Lisa')

Age = c(28,50,70)

## list object

# we use list() to create a list object

list1 = list('John',28, 'Daniel', 50, 'Lisa', 70)

list1

## matrix object

# we use matrix() to create a matrix object

matrix1 = matrix(1:4,nrow=2,ncol=2)

matrix2 = matrix(6:9,nrow=2,ncol=2)

## Arrays object

# we use array() to create a data.frame object

array1 = array(c(matrix1,matrix2),dim = c(2,2,2)) # two-dimensional array

array1

##data frame

# we use data.frame() to create a data.frame object

table1 = data.frame(Names=c('John', 'Daniel', 'Lisa'),Age=c(28,50,70))

table1

# factor

# we use factor() to factor object in R

gender = c(1,0,0,1,1,1,0)

gender = factor(gender,levels=c('0','1'),labels = c('female','male'))

gender

## if statement

# We shall create a if statement that print hot day if the temperature above 30

temperature = 35

if(temperature > 30) {print('hot day')}

if(temperature > 40){print(print('hot day'))} else{print('cool day')}


## for loop

# we shall create a for loop that takes every item in x vector and multiply by 2

x = 1:20

x

for(i in x){print(x[i]*2)}

#-----------------------------End------------------------------------------