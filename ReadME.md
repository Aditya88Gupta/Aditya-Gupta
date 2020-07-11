# ***Getting and Cleaning Data, Course Project***

* This Repository contains files for project made under the course Getting and Cleaning Data (Coursera) 
* There are three files in this Repository :-
    + run_analysis.R
    + CodeBook.md 
    + TidyData.txt

### *run_analysis.R*

* R Script containing the code to perform the following tasks:-
    + Downloads the DataSet from web and saves it in a folder named data on Desktop (Could be changed)
    + Reads the components of both train and test datasets and merges them as one
    + Reads features and activity text files and extracts the info corresponding to mean and standard deviation 
    + Assigns descriptive activity names to name the activities in the data set and appropriately labels the data set         with descriptive variable names.
    + Finally creates an independent tidy data set with the average of each variable for each activity and subject            and saves it as TidyData.txt in the same folder (data)
    
### *CodeBook.md* 

* CodeBook containing the information about variables, the data and transformations done during the cleaning of data 

### *TidyData.txt*

* Text file containing the final processed data with the average of each variable for each activity and subject.

**The dataset used in this course project represent the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]**
