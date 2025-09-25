setwd("C:\\Users\\vimuk\\OneDrive\\Desktop\\IT24103506")

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Question01
popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

#Question02
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

#Question03
#calculate the mean and standard deviation of the 25 sample means 
samplemean<-mean(s.means)
samplemean
samplesd<-sd(s.means)
samplesd

#state therelationship of them with true mean and true standard deviation
popmn
samplemean

truesd=popsd/sqrt(6)
samplesd
