GettingCleaning
===============

#Getting and Cleaning Data - Coursera Assignment
## Some observations:
For this script, we used the following system: Windows 7 Starter 32-bit.
In order to the script work properly, the "UCI HAR Dataset" folder has to be within your working directory.
The script is named "run_analysis.R".
Some annotations were left within the code (see script), so the reader can follow some of the steps there.
## Reading the files and creating an object in R with all the information:
The script reads the necessary files into R, creating specific objects. 
These objects were then joined step by step using "rbind" and "cbind". The labels of activity were changed.
## Extracting specific information to create a new object "Data1":
After this, we have an object with the full data and we extract the necessary information into new objects:
columns with the measurement variables that have the word "mean" in its name (does not matter if it is lower or upper case); columns with the measurement variables that have the word "std" (standard deviation) in its name; columns with the "subject" and "activities" data.
All these new objects (with mean, standard deviation, subjects, and activities) are then joined into a new object.
We made some changes in the names of the measurement variables taking away some symbols (e.g., "-") or 
changing them to the undescore symbol. We decided not to make all the characters in lower case, because we think uppercase can help reading
the variables name. In the same way, we use the underscore symbol "_" to help with reading the names.
So, there was our intention to leave uppercase and the symbol "_" in the variables name.
After this change in the variables name, we created an object named "Data1". We removed all the 
unnecessary objects from R environment (except for "Data1").
This "Data1" is an object with all the means and standard deviation of the measured variables, 
the subject's number of identification (1 to 30) and the actitivity labels.
##We then started to make our tidy (and wide) new dataset.
As asked in step five of the assignment, we created  
"... a second, independent tidy data set with the average of each variable for each activity and
each subject." (Jeff Leek and team). 
The new object is named "Data2" (submitted).
We removed all the other objects leaving only "Data2".
##Output
The final output of the script are: an object named "Data2" and a "txt file" in the working directory named "Data2.txt".
