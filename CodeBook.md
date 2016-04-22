#Code Book
The source data in this script is based on the [UCI Human Activity Recognition Using Smartphones Data Set ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The source data set was obtained from experiments from 30 subjects, performing six different activities, and based on a number of readings from accelerometer and gyroscope signals. Please see [this document](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for the description of how the data was collected and what the features represent.

This script generates a second tidy data set. Details are in the [README](README.md) 

The data contains the following columns:

* subject: integer ID representing the subject in the test. Values are range 1-30
* activity: factor representing the activity undertaken when the measurements were made. Values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* feature: factor representing the feature the measurement is for. Values:  
fbodyacc.mean.x, fbodyacc.mean.y, fbodyacc.mean.z, fbodyacc.std.x, fbodyacc.std.y, fbodyacc.std.z, fbodyaccjerk.mean.x, fbodyaccjerk.mean.y, fbodyaccjerk.mean.z, fbodyaccjerk.std.x, fbodyaccjerk.std.y, fbodyaccjerk.std.z, fbodyaccmag.mean, fbodyaccmag.std, fbodybodyaccjerkmag.mean, fbodybodyaccjerkmag.std, fbodybodygyrojerkmag.mean, fbodybodygyrojerkmag.std, fbodybodygyromag.mean, fbodybodygyromag.std, fbodygyro.mean.x, fbodygyro.mean.y, fbodygyro.mean.z, fbodygyro.std.x, fbodygyro.std.y, fbodygyro.std.z, tbodyacc.mean.x, tbodyacc.mean.y, tbodyacc.mean.z, tbodyacc.std.x, tbodyacc.std.y, tbodyacc.std.z, tbodyaccjerk.mean.x, tbodyaccjerk.mean.y, tbodyaccjerk.mean.z, tbodyaccjerk.std.x, tbodyaccjerk.std.y, tbodyaccjerk.std.z, tbodyaccjerkmag.mean, tbodyaccjerkmag.std, tbodyaccmag.mean, tbodyaccmag.std, tbodygyro.mean.x, tbodygyro.mean.y, tbodygyro.mean.z, tbodygyro.std.x, tbodygyro.std.y, tbodygyro.std.z, tbodygyrojerk.mean.x, tbodygyrojerk.mean.y, tbodygyrojerk.mean.z, tbodygyrojerk.std.x, tbodygyrojerk.std.y, tbodygyrojerk.std.z, tbodygyrojerkmag.mean, tbodygyrojerkmag.std, tbodygyromag.mean, tbodygyromag.std, tgravityacc.mean.x, tgravityacc.mean.y, tgravityacc.mean.z, tgravityacc.std.x, tgravityacc.std.y, tgravityacc.std.z, tgravityaccmag.mean, tgravityaccmag.std
* mean: numeric value representing the mean for all collected measurements for the feature
