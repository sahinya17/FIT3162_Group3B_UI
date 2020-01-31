FIT3162 Group3B UI
# USER PROFILING AND RECOMMENDATION SYSTEMS USING USER GENERATED CONTENT

This project aims at reducing marketing cost by using sentiment analysis techniques. User generated content for 1 year has been obtained from the online social platform, Reddit. The information is processed and a list of reddit users that are influencers and potential clients to a particular product are extracted. Those are used as inputs to a user recommender system web application. This application will be made available to vendors so that they can directly contact and make advertising to users that are interested in their brand or product. The second phase of the project is to perform the score prediction of a post; for Reddit social platform, 'score' is defined as the number of upvotes against the number of downvotes. Using various posts' attributes, different machine learning algorithms have been used for score prediction. The output allows us determine whether there is a relationship between an influencer and score of his post.

## User recommender system web application

This interface allows the user to select their desired category and brand from the drop down menu. Using the find button the user can then generate a list of user names that are a potential customer for the selected brand. Using the influencers tab, the user can navigate to find the list of user names that are influencers. The user is able to print the entire list by using the print command or, print specific entries by selecting the entries using the checkbox and then use the print command to print the entries. 

**Getting Started**

By using the following instructions, you will be able to run the web application in your local machine.

**Prerequisites**
1. Windows or MAC OS.
2. XAMPP for Windows or MAC. 
3. A web browser (Safari, Chrome, Mozilla)
   
**Installing**

You can download XAMPP for your desired OS from https://www.apachefriends.org/download.html
Follow the on screen instructions to complete your installation

**Running the interface**
For Windows:
1. Run the XAMPP_control.exe application. 
2. Select start for apache and MySQL from the first menu. 
3. Download the source file. 
4. Go to XAMPP folder directory and then go to htdocs folder. Paste the downloaded source folder their.
5. Open a web browser.
6. On the address bar type localhost and press enter.
7. From the navigation bar go to phpMyAdmin.
8. On the left bar click on New. 
9. Enter the database name as "dedicated_marketing". Click Create.
10. Click on "dedicated_marketing" on the left bar. On the navigation bar on the top click Import.
11. Click on Choose file. Navigate to the downloaded source folder and select the folder SQL. Import all the csv file from that folder individually. 
12. After choosing the csv file, check the following check boxes at the bottom:
   a) The first line of the file contains the table column names (if this is unchecked, the first line will become part of the       data)
   b) Do not abort on INSERT error
   Then select Go.
13. After all the csv file has been imported go to each table. Navigate to operations from the top navigation bar. Rename each table as the csv file name. 
14. The database and php environment has been eastablished in your local machine. You can now visit the web application.
15. On your browser address bar type localhost/nameOfTheSourceFile
16. Your browser will now open the web application.

For MAC:
1. Run the XAMPP application.
2. In the General Menu click on Start. Wait for the red indicator to turn green. 
3. Navigate to the Services tab. Click on Start All. Wait for all the red indicators to turn green. 
4. Navigate to the Network tab. Click on localhost:8080 and then click Enable.
5. Navigate to the Volumes tab. Click on Mount. Click on Explore and your XAMPP directory will pop up on Finder. 
6. Download the source file. 
7. Go to the htdocs folder in that Finder. Paste the downloaded source folder their.
8. Open a web browser.
9. On the address bar type localhost:8080 and press enter.
10. From the navigation bar go to phpMyAdmin.
11. On the left bar click on New. 
12. Enter the database name as "dedicated_marketing". Click Create.
13. Click on "dedicated_marketing" on the left bar. On the navigation bar on the top click Import.
14. Click on Choose file. Navigate to the downloaded source folder and select the folder SQL. Import all the csv file from that folder individually. 
15. After choosing the csv file, check the following check boxes at the bottom:
   a) The first line of the file contains the table column names (if this is unchecked, the first line will become part of the       data)
   b) Do not abort on INSERT error
   Then select Go.
16. After all the csv file has been imported go to each table. Navigate to operations from the top navigation bar. Rename each table as the csv file name. 
17. The database and php environment has been eastablished in your local machine. You can now visit the web application.
18. On your browser address bar type localhost:8080/nameOfTheSourceFile
19. Your browser will now open the web application.

**Built With**

write

## Score prediction command based interface
The objective of this user interface is to predict the score of a reddit post even before getting the upvotes and downvotes from the other Reddit users. It is a command-based interface that allows end-users to key in details related to a post and obtain a score accordingly. The score is classified as 'High', 'Low' and 'neutral' and the information to be entered are as follows: number of comments to the post, ratio of gaps for an author (his activeness), number of posts of the author, sentiment score of the post, the sentiment ratio (postive sentiment: negative sentiment) and score of comments to the post. 

**Getting Started**

The instructions below will get you a copy of the project up and running on your local machine for development and testing purposes.

**Prerequisites**

1. R for Windows/Mac
2. RStudio, integrated development environment for R

**Installing**

Install R studio for Windows/Mac OS, download the RStudio Desktop version on https://rstudio.com/products/rstudio/download/

Install R for Windows on https://cran.r-project.org/bin/windows/base/ and for Mac OS on https://cran.r-project.org/bin/macosx/

For further details and clarification for installing R and R studio for both Mac and Windows users, go to https://courses.edx.org/courses/UTAustinX/UT.7.01x/3T2014/56c5437b88fa43cf828bff5371c6a924/

**Running the interface**

1. Once the prerequisites installed, download the 2 files namely 'LaptopsTrainingDataAttributes.csv' and 'ScorePrediction.R' from 'ScorePrediction_UI' folder. 
2. Save the two files in the same directory
3. Open R studio, go to File ->  Open File.. Browse through your documents and click on 'ScorePrediction.R'
4. Click on Run
5. The console will ask for user input 

**Built With**

- Pycharm - Python IDE for developers
- Github - Version control

###### Authors
Ishfak Bin Munsur (27467058)

Yoveena Vencatasamy (29019834)
