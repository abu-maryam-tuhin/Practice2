# Vector
# 1. Creating Vector using c() Function
Ages<- c(20,25,30,40,23)
Gender<- c("F","F","M","M","F")
Is_Weekday<- c(TRUE,FALSE,TRUE,TRUE)
mixed_vector <- c("M", 30,T)
class(Ages)
class(Gender)
class(Is_Weekday)
class(mixed_vector)
#  2. Creating Vector Using : (Colon operator)
numeric_sequence<-1:34
# 3. Creating Vector using seq() function
diff_seq<-seq(3,200,10)

# Subset
ages<- c(12,14,15,17,18,19,22,24,26,28,29,35,42,47,58)
ages[8]
ages[3:8]
adults<-ages[ages<18]
childs<-ages[ages>18]

#  factor
smoking_status<- c("yes","yes", "no", "no", "yes")
class(smoking_status)
smoking_status2<- factor(c("yes","yes", "no", "no", "yes"))
class(smoking_status2)
as.factor(smoking_status)
matrix(1:16)
matrix(1:16, ncol=4)
matrix(1:25, ncol=5, nrow=5)
matrix(1:25, ncol=5, nrow=5, byrow=TRUE)
mat<-matrix(1:25, ncol=5, nrow=5)
nrow(mat)
nrow(mat)
dim(mat)
colnames(mat)<- c("T","H","M","I","k")
rownames(mat)<- c("T","H","M","I","k")
# data frame
df<-data.frame(
  id= c("01","02","03"),
  age= c(20,23,28),
  course_pass= factor(c("Y","N","Y"))
  )
data<-data.frame(
  id= c("01","02","03"),
  age= c(20,23,28),
  course_pass= c("Y","N","Y"),
  gender= c("M","F","F")
)
str(data)
data$course_pass
as.factor(data$course_pass)
data$course_pass<- as.factor(data$course_pass)
data$gender<-as.factor(data$gender)
summary(data)
summary(df)
