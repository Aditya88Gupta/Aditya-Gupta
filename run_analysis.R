# Loading packages
  
library(dplyr)
library(reshape2)

# Downloading Data from website

desktop<- "C:/Users/Aditya Gupta/Desktop"      # Path to Desktop 
setwd(desktop)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data"))
      {
        dir.create("./data")
        download.file(fileUrl,destfile = "./data/raw.zip")
        unzip(zipfile = "./data/raw.zip",exdir = "./data/raw")   
        
      }

# Getting and Merging of train,test data sets 

path <- "./data/raw/UCI HAR Dataset"
x_train <- read.table(paste(path,"train","X_train.txt",sep="/"))
y_train <- read.table(paste(path,"train","y_train.txt",sep="/"))
subject_train <- read.table(paste(path,"train","subject_train.txt",sep="/"))

x_test <- read.table(paste(path,"test","X_test.txt",sep="/"))
y_test <- read.table(paste(path,"test","y_test.txt",sep="/"))
subject_test <- read.table(paste(path,"test","subject_test.txt",sep="/"))

x_merged <- bind_rows(x_train,x_test)
y_merged <- bind_rows(y_train,y_test)
subject_merged <- bind_rows(subject_train,subject_test)

# Removing unwanted variables
rm(x_train,y_train,subject_train)
rm(x_test,y_test,subject_test)

# Sub setting data for Mean & Std

features <- read.table(paste(path,"features.txt",sep="/"))
index<- grep("-(mean|std)",features$V2)
x_merged<- x_merged[,index]

# Creating proper Variable names

cnames <- features$V2[index]
cnames<- gsub("-mean","Mean",cnames)
cnames<- gsub("-std","Std",cnames)
cnames<- gsub("[-()]","",cnames)

# Creating final Data Frame

x_merged <- x_merged[index]
processedData <- bind_cols(subject_merged,y_merged,x_merged)
colnames(processedData) <- c("Subject","Activity",cnames)

# Descriptive Activity names and Grouping

activity <- read.table(paste(path,"activity_labels.txt",sep="/"))
processedData$Activity <- factor(processedData$Activity,labels=activity[,2],levels=activity[,1])
processedData$Subject <- as.factor(processedData$Subject)

# Creating Tidy Dataset

melted_data<- melt(processedData,id=c("Subject","Activity"))
tidy_data <- dcast(melted_data,Subject+Activity~variable,mean)

write.table(tidy_data,"./data/TidyData",row.names = FALSE)