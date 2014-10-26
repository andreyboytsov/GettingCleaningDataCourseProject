#You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
    # of each variable for each activity and each subject.

#We assume that the file is downloaded and unpacked. Script shall be run from the directory
# with the dataset (i.e. same directory with "features.txt" and "activity_labels.txt").

# Let's go step-by-step. But we need to start with step 0 - preparation

# ================== Step 0. Prepatation ========================== 
# 0. 1. Reading the list of features.
# First column in the file is the number, second - feature name
features <- read.table("features.txt");
# Column 1 - column number, corresponding to the feature
# Column 2 - feature name
# Second step tells to extract only means and stdevs for each measurement
# Here are the indices to keep:
features.indtokeep <- features[grepl("mean|std",features[,2]), 1];
# And here is the list (for row names)
features.list <- as.character(features[features.indtokeep, 2]);

# 0.2. Reading the list of activities.
# Getting the list of meaningful names.
activities.dataframe <- read.table("activity_labels.txt");
# Column 1 - number, identifying the activity
# Column 2 - activity name
activities <- activities.dataframe[order(activities.dataframe[,1]),2]
# Now if we have the number of activity i we can retrieve meaningful activity name
# as activities[i]

# ======================== STEP 1. Creating Dataset 1. ==========================
# Corresponds to steps 1-4 in the tasks.
# We are going to read train and test set, processing them on the way (extracting mean and std)
# Then we are going to merge the resulting processed sets.

# Starting with the training set

# Just reading the set
# Default arguments are sufficient
# However, we need to extract only the columns that contain mean and standard deviation
# (that's why we need [features.indtokeep, ] part)
trainX <- read.table("train/X_train.txt")[, features.indtokeep];

# Reading raw activity numbers
trainYraw <- read.table("train/Y_train.txt");
# Transforming them into activity names
trainY <- activities[trainYraw[,1]];

# Reading the information about the subjects
trainSubj <- read.table("train/subject_train.txt");

# Binding in the following order: sensor values, then activity, then subject.
trainSet <- cbind(trainX, trainY, trainSubj)
colnames(trainSet)<- c(features.list, "Activity", "Subject");


# Now the same for test set

# Reading the set
# Default arguments are sufficient
# However, we need to extract only the columns that contain mean and standard deviation
# (that's why we need [features.indtokeep, ] part)
testX <- read.table("test/X_test.txt")[, features.indtokeep];

# Reading raw activity numbers
testYraw <- read.table("test/Y_test.txt");
# Transforming them into activity names
testY <- activities[testYraw[,1]];

# Reading the information about the subjects
testSubj <- read.table("test/subject_test.txt");

# Binding in the following order: sensor values, then activity, then subject.
testSet <- cbind(testX, testY, testSubj)
colnames(testSet) <- c(features.list, "Activity", "Subject");



# Merging the dataset. It completes steps 1-4 of the task:
uci.har.dataset <- rbind(trainSet, testSet)


# =============== STEP 5 ==========================

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.

uci.har.dataset.aggregated <- aggregate(. ~ Activity+Subject, data = uci.har.dataset,
          FUN = mean);
# Just setting better names for columns
features.list.mean <- paste0("Average-", as.character(features[features.indtokeep, 2], sep=""));
colnames(uci.har.dataset.aggregated) <- c("Activity", "Subject", features.list.mean)


#That's it, we are done. Resulting datasets are named
  #uci.har.dataset and uci.har.dataset.aggregated
# Both restuling dataset are tidy: one measure - one column and one observation - one row.

# Let's now save them in a proper way.
write.table(uci.har.dataset, "UCI_HAR_dataset.txt", row.name = FALSE, quote=F);
write.table(uci.har.dataset.aggregated, "UCI_HAR_dataset_aggregated.txt",
            row.name = FALSE, quote=F);
