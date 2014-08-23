#################################################################
#######################Course Project############################
#################################################################

#The purpose of this project is to collect, work with, and clean the data set of 
#the data collected from the accelerometers from the Samsung Galaxy S smartphone. 

#################################################################
####################Task 1#######################################
#################################################################
#Read the files
subj.train<-read.table("./UCI HAR Dataset/subject_train.txt")
x.train<-read.table("./UCI HAR Dataset/X_train.txt")
y.train<-read.table("./UCI HAR Dataset/y_train.txt")
subj.test<-read.table("./UCI HAR Dataset/subject_test.txt")
x.test<-read.table("./UCI HAR Dataset/X_test.txt")
y.test<-read.table("./UCI HAR Dataset/y_test.txt")
act.labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

#Merge the training and the test sets 
train.data<-cbind(subj.train,y.train,x.train)
test.data<-cbind(subj.test,y.test,x.test)

#Create one data set
data<-rbind(train.data,test.data) 

#################################################################
####################Task 2#######################################
#################################################################
#Extract only the measurements on the mean and standard deviation for each measurement 
extract.cols<-c(grep("mean()",features[,2]),grep("std()",features[,2]))

#Create a new data set with these columns
data2<-data[,c(1,2,extract.cols+2)]

#################################################################
####################Task 3#######################################
#################################################################
#Use descriptive activity names to name the activities in the data set
data2$act.description<-as.factor(data2[,2])
levels(data2$act.description)<-as.character(relevel(act.labels[,2],ref=1))

#Check if the order is ok (optional)
table(data2$act.description,data2[,2]) 

#################################################################
####################Task 4#######################################
#################################################################
#Label the data set with descriptive variable names. 
names(data2)<-c("Subject","ActivityCode",c(as.character(relevel(features[c(extract.cols),2],ref=1))),"Activity")

#################################################################
####################Task 5#######################################
#################################################################
library(data.table)

#Take the average of each variable for each activity and each subject. 
dt<-as.data.table(data2)
dt2 <- dt[, lapply(.SD,mean), by=list(data2$Subject,data2$Activity)]
tiny.data<-as.data.frame(dt2)

#Create an independent tidy data set
tiny.data<-tiny.data[,c(1,2,4:82)]
names(tiny.data)<-c("Subject","Activity",paste("Average",c(as.character(relevel(features[c(extract.cols),2],ref=1))),sep="-"))

#Create a txt file
write.table(tiny.data,file="tiny.data.txt",row.names=F)
