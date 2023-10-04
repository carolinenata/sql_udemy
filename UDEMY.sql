USE udemy;

-- 1. Count the number of courses for the following: Python, SQL, Excel, Tableau, Power BI, Machine Learning, R Programming
-- Python Courses: 30
SELECT COUNT(course_title) AS 'Number of Python Courses'
FROM courses
WHERE course_title LIKE '%Python%';

-- SQL Courses:12
SELECT COUNT(course_title) AS 'Number of SQL Courses'
FROM courses
WHERE course_title LIKE '%sql%';

-- Excel Courses: 14
SELECT COUNT(course_title) AS 'Number of Excel Courses'
FROM courses
WHERE course_title LIKE '%excel%';

-- Tableau Courses: 12
SELECT COUNT(course_title) AS 'Number of Tableau Courses'
FROM courses
WHERE course_title LIKE '%tableau%';

-- R Programming: 4
SELECT COUNT(course_title) AS 'Number of R Courses'
FROM courses
WHERE course_title LIKE '%R Programming%';

-- Power BI: 9
SELECT COUNT(course_title) AS 'Number of Power BI Courses'
FROM courses
WHERE course_title LIKE '%power bi%';

-- Machine Learning: 13
SELECT COUNT(course_title) AS 'Number of Machine Learning Courses'
FROM courses
WHERE course_title LIKE '%machine learning%';

-- Find the Python class with the highest rating
-- 'A deep understanding of deep learning with Python' by mike X Cohen 4.8
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY rating DESC;

-- Find the SQL class with the highest rating
-- 'Databricks SQL for Data Analysts' by Malvik Vaghadia 4.8
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY rating DESC;        

-- Find the Excel class with the highest rating
-- 'Microsoft Excel: Business Intelligence w/Power Query' by Maven Analytics 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY rating DESC;   

-- Find the Tableau class with the highest rating
-- 'Tableau Certified Data Analyst' by Jed Guinto 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY rating DESC;          
        
-- Find the Power BI course with the highest rating
-- 'Microsoft Power BI Desktop' by Maven Analytics 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY rating DESC;   

-- Find the Power R programming with the highest rating
-- 'R Programming: Advanced Analytics' by Kirill Eremenko
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY rating DESC;   

-- Find the Machine Learning course with the highest rating
-- 'Python for Machine learning & data science' by Jose Portilla
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%machine learning%'
ORDER BY rating DESC;   

-- Find the Python Course with the highest student
-- Complete Python bootcamp from zero to hero' by Jose Portilla 1,792,861 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY students DESC;   

-- Find the sql Course with the highest student
-- 'The complete SQL bootcamp from zero to hero' by Jose Portilla, 726,838 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY students DESC;   

-- Find the Excel Course with the highest student
-- 'Microsoft Excel - from beginner to advanced' by Kyle Pew 1,33,793 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY students DESC;   

-- Find the Tableau Course with the highest student
-- 'Tableau 2022 A-Z Hands On' by Kirill Eremenko
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY students DESC;   

-- Find the Power BI Course with the highest student
-- 'Microsoft Power BI Desktop for Business Analytics' by Maven Analytics 399,961
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY students DESC;   

-- Find the R Programming Course with the highest student
-- 'R Programming A-Z' ny Kirill Eremenko 259,934
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY students DESC;   

-- Find the Power BI Course with the highest student
-- 'Microsoft Power BI Desktop for Business' Maven Analytics 399,961
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY students DESC;   

-- Find the Machine Learning Course with the highest student
-- 'Machine Learning A-Z' by Kirill Eremenko 985,441
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '% machine learning%'
ORDER BY students DESC;   



-- Find the Python Course with the highest time
-- '100 days of code' by Dr. Angela Yu 58 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY time DESC;   

-- Find the SQL Course with the highest time
-- 'Data Engineering Essentails using SQL' by Durga Viswanatha 56 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY time DESC;   

-- Find the Excel Course with the highest time
-- 'Become a data analyst: Excel, sql etc' by Start Tech Academy 27 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY time DESC;   

-- Find the Tableau Course with the highest time
-- '2023-24 Tableau Desktop' Jed Guinto 52 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY time DESC;   

-- Find the Power BI Course with the highest time
-- 'Power BI - Business Intelligence for Beginners' by BizticsCom King 33 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY time DESC;   

-- Find the R Programming Course with the highest time
-- 'Data Science with R: tidyverse' by Marko Intihar 31 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY time DESC;   

-- Find the Machine Learning Course with the highest time
-- 'Python for Machine Learning & Data Science' by Jose Portila 44 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%machine learning%'
ORDER BY time DESC; 

-- Sorting Python, SQL, Excel and etc classes according to their date
-- 2023: 26, 2022: 1, Others: 3

SELECT 'Python Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%python%' AND date LIKE '%2023'
UNION ALL
SELECT 'Python Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%python%' AND date LIKE '%2022'
UNION ALL
SELECT 'Python Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%python%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Sorting SQL to their years
-- 2023: 8, 2022: 3, Others: 1
SELECT 'Count of SQL Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%sql%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of SQL Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%sql%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of SQL Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%sql%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Sorting Excel Courses
-- 2023: 12, 2022: 0, Others: 2
SELECT 'Count of Excel Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%excel%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of Excel Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%excel%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of Excel Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%excel%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Sorting Tableau Courses
-- 2023: 11 , 2022: 1, Others:0

SELECT 'Count of Tableau Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%tableau%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of Tableau Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%tableau%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of Tableau Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%tableau%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';


-- Count of POWER BI Courses
-- 2023: 8, 2022: 0, Others: 1
SELECT 'Count of Power BI Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%power bi%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of Power BI Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%power bi%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of Power BI Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%power bi%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Count of R Programming
-- 2023: 2, 2022: 1, Others, 1
SELECT 'Count of R Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%r programming%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of R Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%r programming%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of R Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%r programming%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Count of Machine Learning Course
-- 2023: 8, 2022: 1, Others: 4
SELECT 'Count of Machine Learning Courses in 2023' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%machine learning%' AND date LIKE '%2023'
UNION ALL
SELECT 'Count of Machine Learning Courses in 2022' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%machine learning%' AND date LIKE '%2022'
UNION ALL
SELECT 'Count of Machine Learning Courses in Other Years' AS Description, COUNT(course_title) AS Count
FROM courses
WHERE course_title LIKE '%machine learning%' AND date NOT LIKE '%2023%' AND date NOT LIKE '%2022%';

-- Find the class with the best rating based on date --

SELECT title, rating, date
FROM courses
ORDER BY rating DESC;

-- Best Classes in 2023
SELECT course_title AS 'Best classes in 2023', rating, date
FROM courses
WHERE date LIKE '%2023%' AND rating >= 4.8;

-- Best Classes in 2022
SELECT course_title AS 'Best Class in 2022', rating, date
FROM courses
WHERE date like '%2022%' AND rating >= 4.7;

-- Best Classes in 2022 behind -- 
SELECT course_title, rating, date
FROM courses
WHERE date NOT LIKE '%2023%' AND date NOT LIKE '%2022%' AND rating >=4.8;

-- Find the number of students in the highest rated class 
-- 'The Complete Python Bootcamp' 1,792,861 students with rating 4.6
-- 'Python for Everybody' 26,773 students, rating 4.8
SELECT course_title, students, rating
FROM courses
WHERE rating >=4.5
ORDER BY rating DESC;

-- Find the number of students in the highest amount of hour
-- 'A deep understanding with Python' 58 hours, 23,301 students
-- 'The Complete Python Bootcamp from zero to hero' 1,792,861, 22 hours
SELECT course_title, students, time
FROM courses
ORDER BY students DESC;

-- Instructor with the highest hour
-- Jose Portilla: 118
SELECT instructor, sum(time)
FROM courses
GROUP BY 1;

-- Instructor with the highest rating Malvik Vaghadia, R Tutorials and Cher Hin Chong 4.8
SELECT instructor, avg(rating)
FROM courses
GROUP BY 1 ;

-- Instructor with the highest students
-- Jose Portilla: 3,374,357
SELECT instructor, sum(students)
FROM courses
GROUP BY 1;

-- Rating to Students Ratio
SELECT course_title, rating, students, (rating/students) AS "Rating to Students Ratio", instructor
FROM courses
ORDER BY (rating/students) DESC 
LIMIT 5;

-- Rating to time Ration
SELECT course_title, rating, time, (rating/time) AS "Rating to Time Ratio", instructor
FROM courses
ORDER BY (rating/students) DESC 
LIMIT 5;
-- Classes 
-- 2023: 73
-- 2022: 10
-- Others: 17
SELECT COUNT(course_title)
FROM courses
WHERE DATE NOT LIKE '%2023%' AND DATE NOT LIKE '%2022%'




