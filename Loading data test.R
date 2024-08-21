#Trying to load with "edf" package
library(edf)
data <- read.edf("./EEG data/chb01/chb01_03_edited.edf")
View(data)
events <- data$events
View(events)
#We get something readable, but not particularly useful

#Trying to load with "edfReader" package
library(edfReader)
data.header <- readEdfHeader("./EEG data/chb01/chb01_03_edited.edf")
View(data.header)
data.signal <- readEdfSignals("./EEG data/chb01/chb01_03_edited.edf")
#This just throws an error

#Trying the scripts from GitHub
source("EDFreadHeader.R")
source("EDFreadAnnotations.R")
data.annotations <- EDFreadAnnotations("./EEG data/chb01/chb01_03_edited.edf")
View(data.annotations)
#This gives the same stupid format on the annotations as the "edf" package