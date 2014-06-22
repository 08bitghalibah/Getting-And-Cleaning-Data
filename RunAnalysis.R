library(base)
library(utils)
library(data.table)
#downloads the data set from the internet and extract it 
download.data <- function() {
  zip.url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zip.file="dataset.zip"
  download.file(zip.url,destfile = zip.file,method ='curl')
  unzip(zip.file)
}
load.dataset <- function(set,features,labels) {
  #constructs the relative path of the data files ,label file, subject files
  prefix <- paste(set,'/',sep='')
  file.data <- paste(prefix, 'X_', set , '.txt', sep='')
  file.label <- paste(prefix, 'Y_', set, '.txt', sep='')
  file.subject <- paste(prefix, 'subject_',set,'.txt',sep='')
  data <- read.table(file.data)[,features$index]
  names(data) <- features$name
  label.set <- read.table(file.label)[, 1]
  data$label <- factor(label.set, levels=labels$level, labels=labels$label)
  
  
  subject.set <- read.table(file.subject)[, 1]
  data$subject <- factor(subject.set)
  
  # return the data after converting in to the table
  data.table(data)
}
run.analysis <- function() {
  setwd('D:\\thesis\\Getting And Cleaning Data\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset')
  feature.set <- read.table('features.txt', col.names = c('index', 'name'))
  features <- subset(feature.set, grepl('-(mean|std)[(]', feature.set$name))
  label.set <- read.table('activity_labels.txt', col.names = c('level', 'label'))
  train.set <- load.dataset('train', features, label.set)
  test.set <- load.dataset('test', features, label.set)
  
  # merges the data set train and test
  dataset <- rbind(train.set, test.set)
  tidy.dataset <- dataset[, lapply(.SD, mean), by=list(label, subject)]
  # Fix the variable names
  names <- names(tidy.dataset)
  # Replacce the name -mean by Mean,-std by Std, BodyBody by Body
  names <- gsub('-mean', 'Mean', names) 
  names <- gsub('-std', 'Std', names) 
  names <- gsub('[()-]', '', names) 
  names <- gsub('BodyBody', 'Body', names) 
  setnames(tidy.dataset, names)
  
  # Write the retrived  data sets to files
  setwd('..')
  write.csv(dataset, file = 'rawdata.csv', row.names = FALSE)
  write.csv(tidy.dataset, file = 'tidydata.csv',
            row.names = FALSE, quote = FALSE)
  
  # Return the tidy data set
  tidy.dataset
}
run.analysis()

