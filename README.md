# Accenture_Project

## What is this project?
It is a customized project which is originally from a website forage.com.

## What is forage?
Forage is a platform that provides virtual work experience programs by offering real-world business problems from actual companies. These projects allow job seekers to engage in tasks similar to those they might encounter in a professional setting. Participants can work on these projects, develop solutions, and showcase their work to potential employers, giving them an opportunity to demonstrate their skills and experience to recruiters.

## Which tools did I use?
I participated in an Accenture-provided project on Forage, where the initial dataset was limited and primarily handled using Excel. However, considering the business problem of rapidly growing data at Social Buzz, I recognized the need for more scalable solutions beyond Excel. To address this, I enhanced the project by incorporating Python and SQL (MySQL), allowing for more advanced data processing and analysis. This customization not only facilitated the immediate analysis but also provided the company with a framework for handling and analyzing their expanding data, which has the potential to become big data. This approach demonstrates my ability to adapt to larger datasets and leverage programming tools essential for managing and analyzing big data in a growing enterprise.

## Business problem: 
Social Buzz is a social media platform which focuses on content rather than individual users, ensuring that trending content takes center stage. By keeping users anonymous and offering over 100 different reaction options, Social Buzz emphasizes user interactions with content rather than personal profiles.
But this company is facing challenges in managing their massive and unstructured data due to their accelerated growth. They seek external expertise to prepare for an upcoming IPO, manage their big data efficiently, and adopt best practices from large corporations. As part of a three-month initial project, a data analyst's task is to provide visualizations to highlight top 5 content categories. And this is very important in the sense of supporting IPO preparation since understanding content trends is also valuable for investors, as it demonstrates that Social Buzz has a clear grasp of its market dynamics and can sustain its growth by catering to user preferences.

## Process 
1) Clean the data in Python and save the cleaned data into new CSV files.
2) Load the cleaned CSV files into data tables and retrieve the top 5 content categories based on the total scores of reactions received per content.
3) Create visualizations to illustrate the findings.

## 1) How the data should be cleaned: (see clean_data jupyter notebook for code details)
Task1) removing columns which are not relevant to this task.
Task2) changing the data type of some values within a column, and
Task 3) removing rows that have values which are missing

## 2) Load the cleaned CSV files into data tables in mySQL and do data modeling for analysis
Analysis 1: All types of categories and top 5 categories
Analysis 2: Reaction types of top 5 categories (Are they in top 5 because people like them or dislike them?)
Analysis 3: Relation between the time and the categories

## 3) Create visualizations (Tableau)
https://public.tableau.com/app/profile/jihyun.lee6775/viz/accenture_project/Dashboard12?publish=yes

I created a dashboard including all three analyses using Tableau for visualizations

### Analysis 1: All types of categories and top 5 categories
![top_5_categories](https://github.com/user-attachments/assets/ad3243c9-3153-4885-8511-f7fc3c284486)

### Analysis 2: Reaction types of top 5 categories (Are they in top 5 because people like them or dislike them?)
![sentiments_categories](https://github.com/user-attachments/assets/2c81e74d-2fe5-476d-8e44-30def2f5ab86)

### Analysis 3: Relation between the time and the categories
![time_and_reactions](https://github.com/user-attachments/assets/1a95654f-d909-4d29-a8af-06544bedf2c1)

