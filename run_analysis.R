run_analysis <- function(){
        
# Install packages and set working directory ###############################################################       
        if("readtext" %in% rownames(installed.packages()) == FALSE) {
                install.packages("readtext")
        }
        library("readtext")
        library("dplyr")
        setwd("./UCI HAR Dataset")
        
# Read features file #######################################################################################        
        featureslist <- read.table("./features.txt", col.names = c("id", "name"))
        features <- c(as.vector(featureslist[, "name"]))
        colnamelist =c("subject", "activity", features)

# Read test files ##########################################################################################        
        testfilelist<-c("./test/subject_test.txt","./test/y_test.txt","./test/X_test.txt")
        testdata<-do.call(cbind, lapply(testfilelist, function(x) read.table(file=x, header=FALSE)))
        names(testdata)<-colnamelist

# Read train files #########################################################################################        
        trainfilelist<-c("./train/subject_train.txt","./train/y_train.txt","./train/X_train.txt")
        traindata<-do.call(cbind, lapply(trainfilelist, function(x) read.table(file=x, header=FALSE)))
        names(traindata)<-colnamelist

# 1. Merges the training and the test sets to create one data set ##########################################
        alldata<-rbind(traindata, testdata)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement ################
        
        meanstdevlabels<-grepl("subject|activity|mean|std", features) & !grepl("meanFreq", features)
        filtereddata = alldata[, meanstdevlabels]

# 3. Uses descriptive activity names to name the activities in the data set ################################
        activitylist<-read.table("activity_labels.txt", col.names=c("id", "name"))
        for (i in 1:nrow(activitylist)) {
                filtereddata$activity[filtereddata$activity == activitylist[i,"id"]]<-as.character(activitylist[i,"name"])
        }

# 4. Appropriately labels the data set with descriptive variable names######################################
        updatednames <- names(filtereddata)
        write.table(filtereddata, file="filtereddata.txt", row.name=FALSE)
        updatednames<-gsub("Acc", " acceleration", updatednames)
        updatednames<-gsub("Mag", " Magnitude", updatednames)
        updatednames<-gsub("BodyBody", "Body", updatednames)
        updatednames<-gsub("Gyro", " gyroscope", updatednames)
        updatednames<-gsub("^t(.*)$", "\\1-time", updatednames)
        updatednames<-gsub("^f(.*)$", "\\1-frequency", updatednames)
        updatednames<-gsub("(Jerk|Gyro)", "-\\1", updatednames)
        updatednames<-gsub("std", "standard deviation ", updatednames)
        updatednames<-gsub("bodybodygyroscope", "body gyroscope", updatednames)
        updatednames<-gsub("-", " ", updatednames)
        updatednames<-tolower(updatednames)
        names(filtereddata)<-updatednames
        
        filtereddata<-mutate(filtereddata,"subjectactivity"=paste(subject, activity, sep="-"))
        
        
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
        tidy_data <- tbl_df(filtereddata) %>%
                group_by("Subject & activity" = filtereddata$subjectactivity) %>%
                summarize_all(mean)
        
        tidy_data <- select(tidy_data,-subject,-activity,-subjectactivity)

        write.table(tidy_data, file="tidy_data.txt", row.name=FALSE)
        setwd("..")
        
        }