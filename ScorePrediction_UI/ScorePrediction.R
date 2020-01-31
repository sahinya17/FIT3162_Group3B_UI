#Title: Score prediction based on inputs related to a post
#Author: Yoveena Vencatasamy
#Date: 22.01.2020

#Clear the environment 
rm(list = ls())

#Reading inputs from user (Information related to the posts)
num_comments <- readline(prompt="Enter number of comments for a post: ")
Ratio_Of_Gaps <- readline(prompt="Enter Ratio of gaps of author: ")
Number_Of_Gaps <- readline(prompt="Enter number of posts of author: ")
sentiment_Of_posts <- readline(prompt="Enter sentiment score of post (value between -1 and 1): ")
sentiment_Of_comments <- readline(prompt="Enter sentiment ratio of comments to post (postive : negative): ")
score_Of_comments <- readline(prompt="Enter score of comments of post (Neutral, postive, highly_positive): ")

#creating a dataframe based on user inputs
test.x <- data.frame("num_comments" = num_comments, "Ratio_Of_Gaps" = Ratio_Of_Gaps, "Number_of_Gaps" = Number_Of_Gaps, "Sentiment_Of_Post" = sentiment_Of_posts,"Sentiment_Of_Comments" = sentiment_Of_comments, "Score_Of_Comments" = score_Of_comments)

#convert dataframe to csv
write.csv(test.x,"test.csv", row.names = FALSE)

#read the file (file must be in curreny working directory)
posts.train <- read.csv("LaptopsTrainingDataAttributes.csv", header = TRUE)
posts.test <- read.csv("test.csv", header = TRUE)

#Remove unrequired columns
posts.train = posts.train[,-1]
posts.train$author = NULL
posts.train$month = NULL
posts.train$id = NULL
posts.train$created_utc = NULL


#Fit the data into a decision tree
#The  target variable is score
library(tree)
posts.decisionTree.fit <- tree(posts.train$Score ~ ., data = posts.train)

#Decision Tree
posts.predtree = predict(posts.decisionTree.fit, posts.test, type = "class")

#Accuracy
DT_table=table(Predicted_Class = posts.predtree,Actual_Class = posts.test$Score)
DT_accuracy = sum(diag(DT_table))/sum(DT_table)

cat("\nWith 79.25% accuracy, the predicted score of the post input by user is: \n")
print(posts.predtree)



