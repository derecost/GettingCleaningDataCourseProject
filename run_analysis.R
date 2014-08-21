#################################################################
Course Project - Getting and Cleaning data
#################################################################

setwd("C:\\Users\\Denise\\Documents\\Arquivos_Denise\\Cursos\\R - Coursera\\Getting and cleaning data\\course project")
#################################################################
#1)Merges the training and the test sets to create one data set.#
#################################################################
#reading the files
subj.train<-read.table("./UCI HAR Dataset/subject_train.txt")
x.train<-read.table("./UCI HAR Dataset/X_train.txt")
y.train<-read.table("./UCI HAR Dataset/y_train.txt")
subj.test<-read.table("./UCI HAR Dataset/subject_test.txt")
x.test<-read.table("./UCI HAR Dataset/X_test.txt")
y.test<-read.table("./UCI HAR Dataset/y_test.txt")
act.labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

train.data<-cbind(subj.train,y.train,x.train)
test.data<-cbind(subj.test,y.test,x.test)
data<-rbind(train.data,test.data) #data set created with the training and the test information
  
#################################################################
#2)Extracts only the measurements on the mean and standard deviation for each measurement. 
#################################################################
extract.cols<-c(grep("mean()",features[,2]),grep("std()",features[,2]))
data2<-data[,c(1,2,extract.cols+2)]

#################################################################
#3)Uses descriptive activity names to name the activities in the data set
#################################################################
data2$act.description<-as.factor(data2[,2])
levels(data2$act.description)<-as.character(relevel(act.labels[,2],ref=1))
table(data2$act.description,data2[,2]) #check if the order is ok

#################################################################
#4)Appropriately labels the data set with descriptive variable names. 
#################################################################
names(data2)<-c("Subject","ActivityCode",c(as.character(relevel(features[c(extract.cols),2],ref=1))),"Activity")

#################################################################
#5)Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#################################################################
library(data.table)

dt<-as.data.table(data2)
dt2 <- dt[, lapply(.SD,mean), by=list(data2$Subject,data2$Activity)]
tiny.data<-as.data.frame(dt2)
tiny.data<-tiny.data[,c(1,2,4:82)]
names(tiny.data)<-c("Subject","Activity",c(as.character(relevel(features[c(extract.cols),2],ref=1))))

write.table(tiny.data,file="tiny.data.txt",row.names=F)
