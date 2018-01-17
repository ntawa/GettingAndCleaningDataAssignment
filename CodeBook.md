# Code Book for Getting and Cleaning Data Assignment

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Adjustments
| Raw data field name         | Updated field name                                               |
|-----------------------------|------------------------------------------------------------------|
| tBodyAcc-mean()-X           | body acceleration mean() x time                                  |
| tBodyAcc-mean()-Y           | body acceleration mean() y time                                  |
| tBodyAcc-mean()-Z           | body acceleration mean() z time                                  |
| tBodyAcc-std()-X            | body acceleration standard deviation () x time                   |
| tBodyAcc-std()-Y            | body acceleration standard deviation () y time                   |
| tBodyAcc-std()-Z            | body acceleration standard deviation () z time                   |
| tGravityAcc-mean()-X        | gravity acceleration mean() x time                               |
| tGravityAcc-mean()-Y        | gravity acceleration mean() y time                               |
| tGravityAcc-mean()-Z        | gravity acceleration mean() z time                               |
| tGravityAcc-std()-X         | gravity acceleration standard deviation () x time                |
| tGravityAcc-std()-Y         | gravity acceleration standard deviation () y time                |
| tGravityAcc-std()-Z         | gravity acceleration standard deviation () z time                |
| tBodyAccJerk-mean()-X       | body acceleration jerk mean() x time                             |
| tBodyAccJerk-mean()-Y       | body acceleration jerk mean() y time                             |
| tBodyAccJerk-mean()-Z       | body acceleration jerk mean() z time                             |
| tBodyAccJerk-std()-X        | body acceleration jerk standard deviation () x time              |
| tBodyAccJerk-std()-Y        | body acceleration jerk standard deviation () y time              |
| tBodyAccJerk-std()-Z        | body acceleration jerk standard deviation () z time              |
| tBodyGyro-mean()-X          | body gyroscope mean() x time                                     |
| tBodyGyro-mean()-Y          | body gyroscope mean() y time                                     |
| tBodyGyro-mean()-Z          | body gyroscope mean() z time                                     |
| tBodyGyro-std()-X           | body gyroscope standard deviation () x time                      |
| tBodyGyro-std()-Y           | body gyroscope standard deviation () y time                      |
| tBodyGyro-std()-Z           | body gyroscope standard deviation () z time                      |
| tBodyGyroJerk-mean()-X      | body gyroscope jerk mean() x time                                |
| tBodyGyroJerk-mean()-Y      | body gyroscope jerk mean() y time                                |
| tBodyGyroJerk-mean()-Z      | body gyroscope jerk mean() z time                                |
| tBodyGyroJerk-std()-X       | body gyroscope jerk standard deviation () x time                 |
| tBodyGyroJerk-std()-Y       | body gyroscope jerk standard deviation () y time                 |
| tBodyGyroJerk-std()-Z       | body gyroscope jerk standard deviation () z time                 |
| tBodyAccMag-mean()          | body acceleration magnitude mean() time                          |
| tBodyAccMag-std()           | body acceleration magnitude standard deviation () time           |
| tGravityAccMag-mean()       | gravity acceleration magnitude mean() time                       |
| tGravityAccMag-std()        | gravity acceleration magnitude standard deviation () time        |
| tBodyAccJerkMag-mean()      | body acceleration jerk magnitude mean() time                     |
| tBodyAccJerkMag-std()       | body acceleration jerk magnitude standard deviation () time      |
| tBodyGyroMag-mean()         | body gyroscope magnitude mean() time                             |
| tBodyGyroMag-std()          | body gyroscope magnitude standard deviation () time              |
| tBodyGyroJerkMag-mean()     | body gyroscope jerk magnitude mean() time                        |
| tBodyGyroJerkMag-std()      | body gyroscope jerk magnitude standard deviation () time         |
| fBodyAcc-mean()-X           | body acceleration mean() x frequency                             |
| fBodyAcc-mean()-Y           | body acceleration mean() y frequency                             |
| fBodyAcc-mean()-Z           | body acceleration mean() z frequency                             |
| fBodyAcc-std()-X            | body acceleration standard deviation () x frequency              |
| fBodyAcc-std()-Y            | body acceleration standard deviation () y frequency              |
| fBodyAcc-std()-Z            | body acceleration standard deviation () z frequency              |
| fBodyAccJerk-mean()-X       | body acceleration jerk mean() x frequency                        |
| fBodyAccJerk-mean()-Y       | body acceleration jerk mean() y frequency                        |
| fBodyAccJerk-mean()-Z       | body acceleration jerk mean() z frequency                        |
| fBodyAccJerk-std()-X        | body acceleration jerk standard deviation () x frequency         |
| fBodyAccJerk-std()-Y        | body acceleration jerk standard deviation () y frequency         |
| fBodyAccJerk-std()-Z        | body acceleration jerk standard deviation () z frequency         |
| fBodyGyro-mean()-X          | body gyroscope mean() x frequency                                |
| fBodyGyro-mean()-Y          | body gyroscope mean() y frequency                                |
| fBodyGyro-mean()-Z          | body gyroscope mean() z frequency                                |
| fBodyGyro-std()-X           | body gyroscope standard deviation () x frequency                 |
| fBodyGyro-std()-Y           | body gyroscope standard deviation () y frequency                 |
| fBodyGyro-std()-Z           | body gyroscope standard deviation () z frequency                 |
| fBodyAccMag-mean()          | body acceleration magnitude mean() frequency                     |
| fBodyAccMag-std()           | body acceleration magnitude standard deviation () frequency      |
| fBodyBodyAccJerkMag-mean()  | body acceleration jerk magnitude mean() frequency                |
| fBodyBodyAccJerkMag-std()   | body acceleration jerk magnitude standard deviation () frequency |
| fBodyBodyGyroMag-mean()     | body gyroscope magnitude mean() frequency                        |
| fBodyBodyGyroMag-std()      | body gyroscope magnitude standard deviation () frequency         |
| fBodyBodyGyroJerkMag-mean() | body gyroscope jerk magnitude mean() frequency                   |
| fBodyBodyGyroJerkMag-std()  | body gyroscope jerk magnitude standard deviation () frequency    |
