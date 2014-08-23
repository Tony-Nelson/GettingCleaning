# The "UCI HAR Dataset" folder has to be within your working directory.
test <- read.table("./UCI HAR Dataset/test/X_test.txt") #Starting to read the files
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
features<- read.table("./UCI HAR Dataset/features.txt")
LabelsTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
LabelsTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
SubjTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
SubjTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
compData <- rbind(test,train) #starting to join the data from test and train
compSubj <- rbind(SubjTest,SubjTrain)
compLabels <- rbind(LabelsTest,LabelsTrain)
colnames(compData) <- features[,2] #Naming the 561 variables
compData2<- cbind(compData,compSubj) # joining column with subjects
compData3<- cbind(compData2,compLabels) # joining column with activities
names(compData3)[562:563] <- c("subjects","activities") # Naming the last columns
compData3$activities[compData3$activities == 1] <- "walking"; compData3$activities[compData3$activities == 2] <- "walking_upstairs"; compData3$activities[compData3$activities == 3] <- "walking_downstairs"; compData3$activities[compData3$activities == 4] <- "sitting"; compData3$activities[compData3$activities == 5] <- "standing"; compData3$activities[compData3$activities == 6] <- "laying" #Changing the names of levels of activities
# Selecting variables with mean, ignoring upper or lower case (mean or Mean)
compData4Mean<-compData3[grep("mean",ignore.case = T,names(compData3))]
# Selecting variables with standard deviation
compData4Std<-compData3[grep("std",ignore.case = T,names(compData3))]
# Selecting columns with subjects and activities
compData4SubAct <- compData3[,562:563]
# Joining all the previous columns
compData5<-cbind(compData4Mean,compData4Std,compData4SubAct)
names(compData5) <-gsub("-", "_", names(compData5),); names(compData5) <-gsub("()", "", names(compData5),fixed=TRUE); names(compData5) <-gsub(",", "", names(compData5),fixed=TRUE); names(compData5) <-gsub("(", "_", names(compData5),fixed=TRUE); names(compData5) <-gsub(")", "_", names(compData5),fixed=TRUE) # Changing names of variables
Data1 <- compData5 # Data1 is the first and complete file. Subjects and Activities are in the last column
rm(list= ls()[!(ls() %in% c("Data1"))]) #Removing unnecessary objects
# Second file, tidy data wide format
ag<-aggregate(Data1, by=list(Data1$activities,Data1$subjects),FUN=mean)
compData6 <- ag[,1:88] # eliminating the last and now unnecessary two columns
names(compData6)[1:2] <- c("activities","subjects") # changing the names of the two first columns
Data2 <- compData6 # Data2 is the second and submited file
write.table(Data2, "./Data2.txt", sep="\t",row.names=FALSE) # Creating a txt file of Data2
rm(list= ls()[!(ls() %in% c("Data2"))])  #Removing unnecessary objects