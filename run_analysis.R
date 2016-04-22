#Load in required libraries
library(dplyr)
library(tidyr)

#download data file and unzip

data_dir = file.path("data")
if (!dir.exists(data_dir)) { dir.create(data_dir)}
zip_file <- file.path(data_dir, "dataset.zip")
if(!file.exists(zip_file)) {
        download.file(
                "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                zip_file,
                method = "curl")
}
unzip(zip_file, exdir = data_dir)

#Load in files
test_x <- read.table("data/UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("data/UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
train_x <- read.table("data/UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("data/UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
features <- read.table("data/UCI HAR Dataset/features.txt")
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt")

# set up columnames
feature_names <- features[,2]
mean_std_features_idx <- grep("(mean\\(\\)|std\\(\\))", feature_names)
valid_feature_names <- tolower(
        gsub("-",".",
             sub("\\(\\)","",feature_names[mean_std_features_idx])))
names(test_y) <- c("activityid")
names(train_y) <- c("activityid")
names(test_subjects) <- c("subject")
names(train_subjects) <- c("subject")

#add activity column
test_y <- transmute(test_y, activity = activities[activityid, 2])
train_y <- transmute(train_y, activity = activities[activityid, 2])

#Select columns and merge tables

test <- bind_cols(test_subjects, test_y, test_x[, mean_std_features_idx])
train <- bind_cols(train_subjects, train_y, train_x[, mean_std_features_idx])
merged <- bind_rows(train, test)

#Name columns

names(merged)[3:ncol(test)] <- valid_feature_names

#make second tidy data set
tidy_data <- merged %>%
        gather(feature, value, tbodyacc.mean.x:fbodybodygyrojerkmag.std) %>%
        group_by(subject, activity, feature) %>%
        summarise(mean = mean(value))
tidy_data$feature <- factor(tidy_data$feature)
write.csv(tidy_data, file = "tidy.csv", row.names=FALSE)
