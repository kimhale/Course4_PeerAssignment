# Course 4: Peer Assignment Code Book

## Approach
This data cleaning exercise started with Human Activity Recognition Using Smartphones Dataset available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]. First, the training and test datasets were combined into one dataset. Then, the activity and subject numbers were added. The final tidy dataset includes the average of each original mean/std variable for each subject and activity combination (i.e., Subj 1 - Walking, Subj 1 - Standing).

## Original Feature Selection 
The features selected for the starting database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ in the X, Y and Z directions. All acceleration values are in standard gravity units 'g'. All gyroscope values are in units of radians/second.These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


All features are normalized and bounded within [-1,1]. 

| Variable | Units | Definition |
|----------|-------|------------|
|activity| none | activity that is being performed
|subj | none | identifies the subject who performed the activity for each window sample, ranges from 1 to 30.
tBodyAcc.mean.X |standard gravity units 'g'| average of the mean accelerometer measure attributed to body movement in the X direction in the time domain
tBodyAcc.mean.Y |standard gravity units 'g'| average of the mean accelerometer measure attributed to body movement in the Y direction in the time domain
tBodyAcc.mean.Z |standard gravity units 'g'| average of the mean accelerometer measure attributed to body movement in the Z direction in the time domain
tGravityAcc.mean.X |standard gravity units 'g'| average of the mean accelerometer measure attributed to gravity in the X direction in the time domain
tGravityAcc.mean.Y |standard gravity units 'g'| average of the mean accelerometer measure attributed to gravity in the Y direction in the time domain
tGravityAcc.mean.Z |standard gravity units 'g'| average of the mean accelerometer measure attributed to gravity in the Z direction in the time domain
tBodyAccJerk.mean.X |standard gravity units 'g'| average of the mean linear acceleration attributed to body movement in the X direction in the time domain
tBodyAccJerk.mean.Y |standard gravity units 'g'| average of the mean linear acceleration attributed to body movement in the Y direction in the time domain
tBodyAccJerk.mean.Z |standard gravity units 'g'| average of the mean linear acceleration attributed to body movement in the Z direction in the time domain
tBodyGyro.mean.X |radians/second| average of the mean gyroscope measure attributed to body movement in the X direction in the time domain
tBodyGyro.mean.Y |radians/second| average of the mean gyroscope measure attributed to body movement in the Y direction in the time domain
tBodyGyro.mean.Z |radians/second| average of the mean gyroscope measure attributed to body movement in the Z direction in the time domain
tBodyGyroJerk.mean.X |radians/second| average of the mean angular velocity attributed to body movement in the X direction in the time domain
tBodyGyroJerk.mean.Y |radians/second| average of the mean angular velocity attributed to body movement in the Y direction in the time domain
tBodyGyroJerk.mean.Z |radians/second| average of the mean angular velocity attributed to body movement in the Z direction in the time domain
tBodyAccMag.mean |standard gravity units 'g'| average of the mean acceleration magnitude attributed to body movement in the time domain
tGravityAccMag.mean |standard gravity units 'g'|average of the mean acceleration magnitude attributed to gravity in the time domain
tBodyAccJerkMag.mean |standard gravity units 'g'|average of the mean linear acceleration magnitude attributed to body movement in the time domain
tBodyGyroMag.mean |radians/second|average of the mean gyroscope magnitude attributed to body movement in the time domain
tBodyGyroJerkMag.mean |radians/second|average of the mean angular velocity magnitude attributed to body movement in the time domain
fBodyAcc.mean.X |standard gravity units 'g'|average of the mean accelerometer measure attributed to body movement in the X direction in the frequency domain
fBodyAcc.mean.Y |standard gravity units 'g'|average of the mean accelerometer measure attributed to body movement in the Y direction in the frequency domain
fBodyAcc.mean.Z |standard gravity units 'g'|average of the mean accelerometer measure attributed to body movement in the Z direction in the frequency domain
fBodyAcc.meanFreq.X |standard gravity units 'g'|average of the mean accelerometer frequency measure attributed to body movement in the X direction in the frequency domain
fBodyAcc.meanFreq.Y |standard gravity units 'g'|average of the mean accelerometer frequency measure attributed to body movement in the Y direction in the frequency domain
fBodyAcc.meanFreq.Z |standard gravity units 'g'|average of the mean accelerometer frequency measure attributed to body movement in the Z direction in the frequency domain
fBodyAccJerk.mean.X |standard gravity units 'g'|average of the mean linear acceleration attributed to body movement in the X direction in the frequency domain
fBodyAccJerk.mean.Y |standard gravity units 'g'|average of the mean linear acceleration attributed to body movement in the Y direction in the frequency	domain
fBodyAccJerk.mean.Z |standard gravity units 'g'|average of the mean linear acceleration attributed to body movement in the Z direction in the frequency domain
fBodyAccJerk.meanFreq.X |standard gravity units 'g'|average of the mean linear acceleration frequency attributed to body movement in the X direction in the frequency domain
fBodyAccJerk.meanFreq.Y |standard gravity units 'g'|average of the mean linear acceleration frequency attributed to body movement in the Y direction in the frequency domain
fBodyAccJerk.meanFreq.Z |standard gravity units 'g'|average of the mean linear acceleration frequency attributed to body movement in the Z direction in the frequency domain
fBodyGyro.mean.X |radians/second|average of the mean gyroscope measure attributed to body movement in the X direction in the frequency domain
fBodyGyro.mean.Y |radians/second|average of the mean gyroscope measure attributed to body movement in the Y direction in the frequency domain
fBodyGyro.mean.Z |radians/second|average of the mean gyroscope measure attributed to body movement in the Z direction in the frequency domain
fBodyGyro.meanFreq.X |radians/second|average of the mean gyroscope measure frequency attributed to body movement in the X direction in the frequency domain
fBodyGyro.meanFreq.Y |radians/second|average of the mean gyroscope measure frequency attributed to body movement in the Y direction in the frequency domain
fBodyGyro.meanFreq.Z |radians/second|average of the mean gyroscope measure frequency attributed to body movement in the Z direction in the frequency domain
fBodyAccMag.mean |standard gravity units 'g'|average of the mean acceleration magnitude attributed to body movement in the frequency domain
fBodyAccMag.meanFreq |standard gravity units 'g'|average of the mean acceleration frequency magnitude attributed to body movement in the frequency domain
fBodyBodyAccJerkMag.mean |standard gravity units 'g'|average of the mean linear acceleration frequency magnitude attributed to body movement in the frequency domain
fBodyBodyAccJerkMag.meanFreq |standard gravity units 'g'|average of the mean linear acceleration frequency magnitude attributed to body movement in the frequency domain
fBodyBodyGyroMag.mean |radians/second|average of the mean gyroscope magnitude attributed to body movement in the frequency domain
fBodyBodyGyroMag.meanFreq |radians/second|average of the mean gyroscope frequency magnitude attributed to body movement in the frequency domain
fBodyBodyGyroJerkMag.mean |radians/second|average of the mean angular velocity magnitude attributed to body movement in the frequency domain
fBodyBodyGyroJerkMag.meanFreq |radians/second|average of the mean angular velocity frequency magnitude attributed to body movement in the frequency domain
tBodyAcc.std.X |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the X direction in the time domain
tBodyAcc.std.Y |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the Y direction in the time domain
tBodyAcc.std.Z |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the Z direction in the time domain
tGravityAcc.std.X |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to gravity in the X direction in the time domain
tGravityAcc.std.Y |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to gravity in the Y direction in the time domain
tGravityAcc.std.Z |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to gravity in the Z direction in the time domain
tBodyAccJerk.std.X |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the X direction in the time domain
tBodyAccJerk.std.Y |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the Y direction in the time domain
tBodyAccJerk.std.Z |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the Z direction in the time domain
tBodyGyro.std.X |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the X direction in the time domain
tBodyGyro.std.Y |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the Y direction in the time domain
tBodyGyro.std.Z |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the Z direction in the time domain
tBodyGyroJerk.std.X |radians/second|average of the standard deviation angular velocity attributed to body movement in the X direction in the time domain
tBodyGyroJerk.std.Y |radians/second|average of the standard deviation angular velocity attributed to body movement in the Y direction in the time domain
tBodyGyroJerk.std.Z |radians/second|average of the standard deviation angular velocity attributed to body movement in the Z direction in the time domain
tBodyAccMag.std |standard gravity units 'g'|average of the standard deviation acceleration magnitude attributed to body movement in the time domain
tGravityAccMag.std |standard gravity units 'g'|average of the standard deviation acceleration magnitude attributed to gravity in the time domain
tBodyAccJerkMag.std |standard gravity units 'g'|average of the standard deviation linear acceleration magnitude attributed to body movement in the time domain
tBodyGyroMag.std |radians/second| average of the standard deviation gyroscope magnitude attributed to body movement in the time domain
tBodyGyroJerkMag.std |radians/second| average of the standard deviation angular velocity magnitude attributed to body movement in the time domain
fBodyAcc.std.X |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the X direction in the frequency domain
fBodyAcc.std.Y |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the Y direction in the frequency domain
fBodyAcc.std.Z |standard gravity units 'g'|average of the standard deviation accelerometer measure attributed to body movement in the Z direction in the frequency domain
fBodyAccJerk.std.X |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the X direction in the frequency domain
fBodyAccJerk.std.Y |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the Y direction in the frequency domain
fBodyAccJerk.std.Z |standard gravity units 'g'|average of the standard deviation linear acceleration attributed to body movement in the Z direction in the frequency domain
fBodyGyro.std.X |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the X direction in the frequency domain
fBodyGyro.std.Y |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the Y direction in the frequency domain
fBodyGyro.std.Z |radians/second|average of the standard deviation gyroscope measure attributed to body movement in the Z direction in the frequency domain
fBodyAccMag.std |standard gravity units 'g'|average of the standard deviation acceleration magnitude attributed to body movement in the frequency domain
fBodyBodyAccJerkMag.std |standard gravity units 'g'|average of the standard deviation linear acceleration frequency magnitude attributed to body movement in the frequency domain
fBodyBodyGyroMag.std |radians/second|average of the standard deviation gyroscope magnitude attributed to body movement in the frequency domain
fBodyBodyGyroJerkMag.std |radians/second|average of the standard deviation angular velocity magnitude attributed to body movement in the frequency domain
