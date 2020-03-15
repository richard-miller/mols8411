#   _____ _             _   _                        _ _   _       _____        _        
#  / ____| |           | | (_)                      (_| | | |     |  __ \      | |       
# | (___ | |_ __ _ _ __| |_ _ _ __   __ _  __      ___| |_| |__   | |  | | __ _| |_ __ _ 
#  \___ \| __/ _` | '__| __| | '_ \ / _` | \ \ /\ / | | __| '_ \  | |  | |/ _` | __/ _` |
#  ____) | || (_| | |  | |_| | | | | (_| |  \ V  V /| | |_| | | | | |__| | (_| | || (_| |
# |_____/ \__\__,_|_|   \__|_|_| |_|\__, |   \_/\_/ |_|\__|_| |_| |_____/ \__,_|\__\__,_|
#                                    __/ |                                               
#                                   |___/                                                

# Lets download some data (make sure the data folder exists)
download.file("https://raw.githubusercontent.com/datacarpentry/R-genomics/gh-pages/data/Ecoli_metadata.csv", 
              "data/Ecoli_metadata.csv")

# and read it into R and assign it to the object metadata
metadata <- read.csv('data/Ecoli_metadata.csv')

# What does it look like ...
metadata
head(metadata)
View(metadata)

# Topic: DataFrames
class(metadata)

# Columns of Vectors aka X observations of Y variables
str(metadata)

# Inspecting dataframes
dim(metadata)
nrow(metadata)
ncol(metadata)

head(metadata)
tail(metadata)

names(metadata)
rownames(metadata)

summary(metadata)

# --------
# Exercise
# --------
#
# What is the class of the object metadata?
#
# Answer:

# How many rows and how many columns are in this object?
#
# Answer:

# How many citrate+ mutants have been recorded in this population?
#
# [Hint: how many positive or negative values are there in the cit column]
#
# Answer:


#
# Topic: Subsetting
#

# first element in the first column of the data frame (as a vector)
metadata[1, 1]
# first element in the 6th column (as a vector)
metadata[3, 6]   
# first column of the data frame (as a vector)
metadata[, 1]    
# first column of the data frame (as a data frame)
metadata[1]
# first row (as a data frame)
metadata[1,]
# first three elements in the 7th column (as a vector)
metadata[1:3, 7] 
# the 3rd row of the data frame (as a data.frame)
metadata[3, ]    
# equivalent to head(metadata)
metadata[1:6, ]

# looking at the 1:6 more closely
1:6
c(1,2,3,4,5,6)
metadata[c(1,2,3,4,5,6),]
rows <- 3
metadata[1:rows,]

# and you can omit columns using '-'
metadata[-1]
metadata[-c(1,2)]
metadata[-(1:3)]

# and we can also use the column names to subset
metadata["sample"]
metadata[c("sample", "genome_size")]
metadata[, "sample"]

#
# Topic: Factors (for catagorial data)
#

gender <- factor(c("male", "female", "female", "male"))
gender

levels(gender)
nlevels(gender)

# factors have an order
temperature <- factor(c("hot", "cold", "hot", "warm"))
temperature[1]
temperature[2]
temperature

levels(temperature)
temperature <- factor(c("hot", "cold", "hot", "warm"), levels = c("cold", "warm", "hot"))
temperature
levels(temperature)
levels(temperature)[2] <- 'cool'


# so does our metadata have factors
str(metadata)

# ---------
# Excercise
# ---------

