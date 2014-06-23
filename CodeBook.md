#Script
The script has three functions to download data set, load the data set  and the main function runAnalysis().The runAnalysis function 
performs the following actions
* It downloads the data and extract the data 
* It reads the train and test data merrges 
* It proceses the merged data set extracts the relevant variables from the merged dataset and descriptive activity names
* It then writes the merged dataset and then write it rawdata.csv file
* It then writes in the tidy data set file tidydata.csv
# How to Run Script
* For running the script you have to download file RunAnalysis.R
* you have to execute the script using the following commnad source(RunAnalysis.R)
* if the  data is already downloaded to the current directory then execute run.analysis() which is the main function otherwise
first download the data using the following function download.data(). This function will download and unzip the data in to your 
current working path

#Raw Data Sets
* For this Project we have to filtered variable of Mean and STD so i filtered all the variables containing -(mean|std)[(] using the 
regular expression
*Raw data set has 68 variables:
    *subject - An identifier of the subject who carried out this experiment.
    *label - An activity label which is carried out by the subject 

Plus 66 filtered features mined as described below.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
-XYZ is used to denote 3-axial signals in the X, Y and Z directions.

    tBodyAcc-XYZ
    tGravityAcc-XYZ
    tBodyAccJerk-XYZ
    tBodyGyro-XYZ
    tBodyGyroJerk-XYZ
    tBodyAccMag
    tGravityAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc-XYZ
    fBodyAccJerk-XYZ
    fBodyGyro-XYZ
    fBodyAccMag
    fBodyAccJerkMag
    fBodyGyroMag
    fBodyGyroJerkMag

#Tidy Data Set
Tidy data set has also the same number of variables as are in the raw data set but all the variables in the tidy data set are renamed according to the 
following rules
* calm case rule is used for the conversion of the variables. All variables are not converted to lower case
* The Varible Name provided are descriptive 
* The Variables name are unique and . dots ,- dashes ,( paraenthisis are removed from the variable name. 
The following major replacement are done to meet the project requirements
* -mean( replaced by Mean
* -Std replaced by std
* Replace BodyBody by Body
* Remove all the paranthesis ()
The following are the variables in the tidy data set:
1) tBodyAccMeanX
2) tBodyAccMeanY
3) tBodyAccMeanZ
4) tBodyAccStdX
5) tBodyAccStdY
6) tBodyAccStdZ
7) tGravityAccMeanX
8) tGravityAccMeanY
9) tGravityAccMeanZ
10)tGravityAccStdX
11)tGravityAccStdY
12)	tGravityAccStdZ
13)	tBodyAccJerkMeanX
14) tBodyAccJerkMeanY
15) tBodyAccJerkMeanZ
16)	tBodyAccJerkStdX
17)	tBodyAccJerkStdY
18)	tBodyAccJerkStdZ
19)	tBodyGyroMeanX
20)	tBodyGyroMeanY
21) tBodyGyroMeanZ
22) tBodyGyroStdX
23) tBodyGyroStdY
24) tBodyGyroStdZ
25) tBodyGyroJerkMeanX
26)	tBodyGyroJerkMeanY
27) tBodyGyroJerkMeanZ
28)	tBodyGyroJerkStdX
29)	tBodyGyroJerkStdY
30) tBodyGyroJerkStdZ
31) tBodyAccMagMean
32) tBodyAccMagStd
33)	tGravityAccMagMean
34)	tGravityAccMagStd
35) tBodyAccJerkMagMean
36) tBodyAccJerkMagStd
37) tBodyGyroMagMean
38) tBodyGyroMagStd
39) tBodyGyroJerkMagMean
40) tBodyGyroJerkMagStd
41) fBodyAccMeanX
42) fBodyAccMeanY
43) fBodyAccMeanZ
44) fBodyAccStdX
45) fBodyAccStdY
46) fBodyAccStdZ
47)	fBodyAccJerkMeanX
48) fBodyAccJerkMeanY
49) fBodyAccJerkMeanZ
50) fBodyAccJerkStdX
51)	fBodyAccJerkStdY
52) fBodyAccJerkStdZ
53) fBodyGyroMeanX
54)	fBodyGyroMeanY
55) fBodyGyroMeanZ
56) fBodyGyroStdX
57) fBodyGyroStdY
58) fBodyGyroStdZ
59) fBodyAccMagMean
60) fBodyAccMagStd
61) fBodyAccJerkMagMean
62) fBodyAccJerkMagStd
63) fBodyGyroMagMean
64) fBodyGyroMagStd
65)	fBodyGyroJerkMagMean
66) fBodyGyroJerkMagStd
