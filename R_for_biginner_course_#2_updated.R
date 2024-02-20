# load data
df = read.csv(file.choose())

df = read.csv('insert a full directory')

# preview data
View(df)

df

# check types of variable per column
str(df)

# types of r data object
class(df)

# create descriptive summary
summary(df)

# extract specific column of the data frame
df['Age']

df$Age

df[6]

# extract specific row of the data frame
df[1,]

# rename a specific column
colnames(df)[1] ='Id'

# rename a certain value in the data frame
df[df=='male'] = 'men'

# change a value of specific cell in the data frame 
df$Name[df$Name=='Braund, Mr. Owen Harris'] = 'Mr. Owen Harris Braund'

df['Name'][df['Name']=='Braund, Mr. Owen Harri'] = 'Mr. Owen Harris Braund'

# filtering

survivers = df[df$Survived==1,]

not_survivers = df[df$Survived==0,]

# remove missing 

df1 = na.omit(df)

# cross-tabulation
table(survived = df$Survived,Sex= df$Sex)

# chi square test for two categorical values - is the significant difference between Sex and survival rate
chisq.test(df$Survived,df$Sex)

# scatter plot
plot(x=df$Age,y=df$Fare, main = 'Age versus Fare', xlab = 'Age',
     ylab = 'Fare')

# look for documentation of the function
?plot

# correlation test between two continuous values
# pearson correlation, this is a default(parametric)
cor.test(df$Age,df$Fare)

?cor.test

# spearman correlation (non-parametric)
cor.test(df$Age,df$Fare,method = 'spearman')

# let us visualize the outlier using box plot
boxplot(df$Age)
summary(df$Age)

boxplot(df$Fare)
summary(df$Fare)

# let try a pie chart
df1 = data.frame(Sex=c('Male','Female'),Freq = c(81,221))

pie(df1$Freq,labels = df1$Sex)

# let try a bar chart
# option 1
barplot(df1$Freq,names.arg = df1$Sex)

# option 2
barplot(df1$Freq~df1$Sex,col= c('blue','red'))

?barplot

# let try a histogram
hist(df$Age)

# partition of graphical window
# create 4 partition
par(mfrow=c(2,2))

plot(x=df$Age,y=df$Fare, main = 'Age versus Fare', xlab = 'Age',
     ylab = 'Fare')

boxplot(df$Age)

pie(df1$Freq,labels = df1$Sex)

barplot(df1$Freq,names.arg = df1$Sex)

# change partition of graphical window back to normal
par(mfrow=c(1,1))