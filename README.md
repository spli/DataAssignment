## Scripts:

* run_analysis.r - this script downloads and tidies a data set. Please see the [codebook](CodeBook.md) for more details about the steps the script performs.

It requires the dplyr and tidyr packages to be installed on the system. It is designed to work within the current working directory. It saves the resulting dataset as a txt to the top level of the working directory.

The following steps have been applied to the data:

1. Downloads and unzips the zip file containg the data
2. Reads in required txt files
3. Transmute the activity data to use activity name strings rather than numbers.
4. Merge activity, subject and measurement data, selecting only the mean and std measurements
5. Rename columns
6. Tidies the data so that one row is now only one measurement.
7. Averages up for each measurement, activity and subject
8. Saves out resulting tidy data to tidy.txt
