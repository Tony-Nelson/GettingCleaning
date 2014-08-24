#CodeBook

This code book gives information about the "Data2.txt" dataset, generated by "run_analysis.R" script. This data was transformed based on an original database.
The dataset includes the following files: "run_analysis.R" script (Github); "README.md" (Github); "Data2.txt" (submitted in Coursera).


This information was provided in the original data (this is a citation): "(...) database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions." (extracted from the file "features_info.txt")

## Dimensions of dataset generated by the script:
The dataset has 180 observations of 88 variables.
The rows are the combination of each 30 subjects performing six (6) different classes of behavior (see "activities"). Therefore, 30 x 6 = 180 rows.
The columns are the variables.

##variable name:
 [1] "activities": (6 levels) "laying", "sitting", "standing", "walking", "walking_downstairs", and "walking_upstairs";
 [2] "subjects": 30 subjects;                           
 [3] "tBodyAcc_mean_X": numeric, mean;                    
 [4] "tBodyAcc_mean_Y": numeric, mean;                    
 [5] "tBodyAcc_mean_Z": numeric, mean;                    
 [6] "tGravityAcc_mean_X": numeric, mean;
 [7] "tGravityAcc_mean_Y": numeric, mean;
 [8] "tGravityAcc_mean_Z": numeric, mean;
 [9] "tBodyAccJerk_mean_X": numeric, mean;
[10] "tBodyAccJerk_mean_Y": numeric, mean;
[11] "tBodyAccJerk_mean_Z": numeric, mean;
[12] "tBodyGyro_mean_X": numeric, mean;
[13] "tBodyGyro_mean_Y": numeric, mean;
[14] "tBodyGyro_mean_Z": numeric, mean;
[15] "tBodyGyroJerk_mean_X": numeric, mean;
[16] "tBodyGyroJerk_mean_Y": numeric, mean;
[17] "tBodyGyroJerk_mean_Z": numeric, mean;
[18] "tBodyAccMag_mean": numeric, mean;
[19] "tGravityAccMag_mean": numeric, mean;
[20] "tBodyAccJerkMag_mean" : numeric, mean;              
[21] "tBodyGyroMag_mean" : numeric, mean;                 
[22] "tBodyGyroJerkMag_mean" : numeric, mean;             
[23] "fBodyAcc_mean_X"  : numeric, mean;                  
[24] "fBodyAcc_mean_Y"  : numeric, mean;                  
[25] "fBodyAcc_mean_Z"  : numeric, mean;                  
[26] "fBodyAcc_meanFreq_X"  : numeric, mean;              
[27] "fBodyAcc_meanFreq_Y"  : numeric, mean;              
[28] "fBodyAcc_meanFreq_Z"   : numeric, mean;             
[29] "fBodyAccJerk_mean_X"  : numeric, mean;              
[30] "fBodyAccJerk_mean_Y"  : numeric, mean;              
[31] "fBodyAccJerk_mean_Z"   : numeric, mean;             
[32] "fBodyAccJerk_meanFreq_X" : numeric, mean;           
[33] "fBodyAccJerk_meanFreq_Y": numeric, mean;            
[34] "fBodyAccJerk_meanFreq_Z": numeric, mean;            
[35] "fBodyGyro_mean_X"    : numeric, mean;               
[36] "fBodyGyro_mean_Y"     : numeric, mean;              
[37] "fBodyGyro_mean_Z"   : numeric, mean;                
[38] "fBodyGyro_meanFreq_X"   : numeric, mean;            
[39] "fBodyGyro_meanFreq_Y"  : numeric, mean;             
[40] "fBodyGyro_meanFreq_Z"    : numeric, mean;           
[41] "fBodyAccMag_mean"   : numeric, mean;                
[42] "fBodyAccMag_meanFreq"    : numeric, mean;           
[43] "fBodyBodyAccJerkMag_mean"   : numeric, mean;        
[44] "fBodyBodyAccJerkMag_meanFreq"  : numeric, mean;     
[45] "fBodyBodyGyroMag_mean"       : numeric, mean;       
[46] "fBodyBodyGyroMag_meanFreq"   : numeric, mean;       
[47] "fBodyBodyGyroJerkMag_mean"    : numeric, mean;      
[48] "fBodyBodyGyroJerkMag_meanFreq"  : numeric, mean;    
[49] "angle_tBodyAccMeangravity_"   : numeric, mean;      
[50] "angle_tBodyAccJerkMean_gravityMean_": numeric, mean;
[51] "angle_tBodyGyroMeangravityMean_"    : numeric, mean;
[52] "angle_tBodyGyroJerkMeangravityMean_": numeric, mean;
[53] "angle_XgravityMean_"      : numeric, mean;          
[54] "angle_YgravityMean_"    : numeric, mean;            
[55] "angle_ZgravityMean_"       : numeric, mean;         
[56] "tBodyAcc_std_X"   : numeric, mean of the standard deviation;                  
[57] "tBodyAcc_std_Y"   : numeric, mean of the standard deviation;                  
[58] "tBodyAcc_std_Z"   : numeric, mean of the standard deviation;                  
[59] "tGravityAcc_std_X"   : numeric, mean of the standard deviation;               
[60] "tGravityAcc_std_Y"    : numeric, mean of the standard deviation;              
[61] "tGravityAcc_std_Z"    : numeric, mean of the standard deviation;              
[62] "tBodyAccJerk_std_X"   : numeric, mean of the standard deviation;              
[63] "tBodyAccJerk_std_Y"    : numeric, mean of the standard deviation;             
[64] "tBodyAccJerk_std_Z"    : numeric, mean of the standard deviation;             
[65] "tBodyGyro_std_X"      : numeric, mean of the standard deviation;              
[66] "tBodyGyro_std_Y"      : numeric, mean of the standard deviation;              
[67] "tBodyGyro_std_Z"       : numeric, mean of the standard deviation;             
[68] "tBodyGyroJerk_std_X"    : numeric, mean of the standard deviation;            
[69] "tBodyGyroJerk_std_Y"   : numeric, mean of the standard deviation;             
[70] "tBodyGyroJerk_std_Z"    : numeric, mean of the standard deviation;            
[71] "tBodyAccMag_std"        : numeric, mean of the standard deviation;            
[72] "tGravityAccMag_std"      : numeric, mean of the standard deviation;           
[73] "tBodyAccJerkMag_std"     : numeric, mean of the standard deviation;           
[74] "tBodyGyroMag_std"        : numeric, mean of the standard deviation;           
[75] "tBodyGyroJerkMag_std"    : numeric, mean of the standard deviation;           
[76] "fBodyAcc_std_X"          : numeric, mean of the standard deviation;           
[77] "fBodyAcc_std_Y"          : numeric, mean of the standard deviation;           
[78] "fBodyAcc_std_Z"           : numeric, mean of the standard deviation;          
[79] "fBodyAccJerk_std_X"       : numeric, mean of the standard deviation;          
[80] "fBodyAccJerk_std_Y"      : numeric, mean of the standard deviation;           
[81] "fBodyAccJerk_std_Z"       : numeric, mean of the standard deviation;          
[82] "fBodyGyro_std_X"          : numeric, mean of the standard deviation;          
[83] "fBodyGyro_std_Y"           : numeric, mean of the standard deviation;         
[84] "fBodyGyro_std_Z"            : numeric, mean of the standard deviation;        
[85] "fBodyAccMag_std"            : numeric, mean of the standard deviation;        
[86] "fBodyBodyAccJerkMag_std"    : numeric, mean of the standard deviation;        
[87] "fBodyBodyGyroMag_std"        : numeric, mean of the standard deviation;       
[88] "fBodyBodyGyroJerkMag_std"   : numeric, mean of the standard deviation.


## Reference for the original dataset:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.