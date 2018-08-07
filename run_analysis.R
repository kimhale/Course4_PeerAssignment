# run_analysis.R
# Take training and test data and puts into df_sub
# Extracts only the measurements on the mean and standard deviation for each measurement
# Names the activities in the data set
# Creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.

# Load libraries
library(tidyverse)

# Set working directory
wd <- "/Users/kimberlyhale/Documents/Coursera/DataScienceCert/C3_CleaningData/PeerGradedAssignment"
setwd(wd)

# Read in test & training data
df_train <- read.table("UCI HAR Dataset/train/X_train.txt")
df_train_act <- read.table("UCI HAR Dataset/train/Y_train.txt")
df_train_sub <- read.table("UCI HAR Dataset/train/subject_train.txt")

df_test <- read.table("UCI HAR Dataset/test/X_test.txt")
df_test_act <- read.table("UCI HAR Dataset/test/Y_test.txt")
df_test_sub <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Read in activity labels
act_def <- read.table("UCI HAR Dataset/activity_labels.txt")

# Relabel activities
df_test_act$V1 <- factor(df_test_act$V1, levels = c(1:6), labels = act_def$V2)
df_train_act$V1 <- factor(df_train_act$V1, levels = c(1:6), labels = act_def$V2)

# Read in col names
df_features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

# Clean col names, remove (), replace , with ., replace - with .
df_features$V2 <- gsub("()", "", df_features$V2, fixed = TRUE)
df_features$V2 <- gsub(",", ".", df_features$V2, fixed = TRUE)
df_features$V2 <- gsub("-", ".", df_features$V2)

# Add col names
colnames(df_train) <- df_features$V2
colnames(df_test) <- df_features$V2

# Get column indicies for subsetting
mean_cols <- grep("mean", df_features$V2)
std_cols <- grep("std", df_features$V2)

# Subset to just mean and std columns and bind training and test
df_sub <- rbind(df_train[, c(mean_cols, std_cols)], df_test[, c(mean_cols, std_cols)])

# Add activity and subject # to train
df_sub <- df_sub %>%
    mutate(activity = c(df_train_act$V1, df_test_act$V1)) %>%
    mutate(subj = c(df_train_sub$V1, df_test_sub$V1))

# Independent tidy data with average of each variable for each activity and each subject
df_final <- df_sub %>%
    group_by(activity, subj) %>%
    summarise_all(mean)

write.table(df_final, file = "tidy_data.txt", row.names = FALSE)
