USE udemy;

-- 1. Count the number of courses for the following: Python, SQL, Excel, Tableau, Power BI, Machine Learning, R Programming
-- Python Courses: 21
SELECT COUNT(course_title) AS 'Number of Python Courses'
FROM courses
WHERE course_title LIKE '%Python%';

-- SQL Courses:13
SELECT COUNT(course_title) AS 'Number of SQL Courses'
FROM courses
WHERE course_title LIKE '%sql%';

-- Excel Courses: 20
SELECT COUNT(course_title) AS 'Number of Excel Courses'
FROM courses
WHERE course_title LIKE '%excel%';

-- Tableau Courses: 12
SELECT COUNT(course_title) AS 'Number of Tableau Courses'
FROM courses
WHERE course_title LIKE '%tableau%';

-- R Programming: 1
SELECT COUNT(course_title) AS 'Number of R Courses'
FROM courses
WHERE course_title LIKE '%R Programming%';

-- Power BI: 12
SELECT COUNT(course_title) AS 'Number of Power BI Courses'
FROM courses
WHERE course_title LIKE '%power bi%';

-- Machine Learning: 8
SELECT COUNT(course_title) AS 'Number of Machine Learning Courses'
FROM courses
WHERE course_title LIKE '%machine learning%';

-- Find the Python class with the highest rating
-- 'Business Data Analytics & Intelligence with Python' Andrei Neagole
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
-- 'Data Analysis Excel for Beginners' 4.8 by Kawser Ahmed
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
-- 'Data Analyst Toolbox: Excel, SQL, POWERBI' - 4.6 Vardges Zardaryan
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
-- '100 days of Code' Dr Angela Yu, 1,030,009 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY students DESC;   

-- Find the sql Course with the highest student
-- 'SQL, MySQL for Data Analysts and Business Intelligence' by 365 Careers 216,985
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY students DESC;   

-- Find the Excel Course with the highest student
-- 'Microsoft Excel: Data Analysis with Excel Pivot Tables' by Maven Analytics 224,792 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY students DESC;   

-- Find the Tableau Course with the highest student
-- 'Tableau 2022 A-Z Hands On' by Kirill Eremenko, 363,469
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY students DESC;   

-- Find the Power BI Course with the highest student
-- 'PL-300 Cerficiation: Microsoft Power BI Data Analyst' Philip Burton
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY students DESC;   

-- Find the R Programming Course with the highest student
-- 'R Programming A-Z' ny Kirill Eremenko 260050 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY students DESC;   


-- Find the Machine Learning Course with the highest student
-- 'Python for Data Science and Machine Learning' Jose Portilla 668,792
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '% machine learning%'
ORDER BY students DESC;   



-- Find the Python Course with the highest time
-- '100 days of code' by Dr. Angela Yu 57 hours
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
-- 'The Microsoft Excel Data Analysis Toolkit Bundle' - Simon Sez IT 32 hours
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
-- 'PL-300 Certification': Microsoft Power BI Data Analyst 29 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY time DESC;   

-- Find the R Programming Course with the highest time
-- 'R Programming A-Z' Kirill Eremenko
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
-- 2023: 16, 2022: 2, Others: 3

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
-- 2023: 9, 2022: 1 Others: 3
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
-- 2023: 12, 2022: 4, Others: 4
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
-- 2023: 9 , 2022: 2, Others:1

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
-- 2023: 8, 2022: 0, Others: 4
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
-- 2023: 1, 2022: 0, Others, 0
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
-- 2023: 3, 2022: 1, Others: 4
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

SELECT course_title, rating, date
FROM courses
ORDER BY rating DESC;

-- Best Classes in 2023
-- Data Analyst Portfolio Creation, Data Bricks for Data Analysis
SELECT course_title AS 'Best classes in 2023', rating, date
FROM courses
WHERE date LIKE '%2023%' AND rating >= 4.8;

-- Best Classes in 2022
-- Mastering Data Visualization and Data Analytics Intro to SQL Healthcare
SELECT course_title AS 'Best Class in 2022', rating, date
FROM courses
WHERE date like '%2022%' AND rating >= 4.7;

-- Best Classes in 2022 behind -- 
-- Data Analysis: Excel for Beginners
SELECT course_title, rating, date
FROM courses
WHERE date NOT LIKE '%2023%' AND date NOT LIKE '%2022%' AND rating >=4.8;

-- Find the number of students in the highest rated class 
-- Data Analyst Portfolio Creation 145 students 4.9
SELECT course_title, students, rating
FROM courses
WHERE rating >=4.5
ORDER BY rating DESC;

-- Find the number of students in the highest amount of hour
-- 100 days of code' 1,030,009 students, 57 hours
SELECT course_title, students, time
FROM courses
ORDER BY students DESC;

-- Instructor with the highest hour
-- Kirill Eremenko: 151 hours
SELECT instructor, sum(time) as 'total hours'
FROM courses
GROUP BY 1
ORDER BY 'total hours' DESC;

-- Joseph Okon 4.8
SELECT instructor, avg(rating)
FROM courses
GROUP BY 1 ;

-- Instructor with the highest students
-- Kirill Eremenko 2,355,717
SELECT instructor, sum(students)
FROM courses
GROUP BY 1;

-- Rating to Students Ratio
SELECT course_title, rating, students, (rating/students) AS "Rating to Students Ratio", instructor
FROM courses
ORDER BY (rating/students) DESC 
LIMIT 5;


-- Classes 
-- 2023: 67
-- 2022: 12
-- Others: 21
SELECT COUNT(course_title)
FROM courses
WHERE DATE NOT LIKE '%2023%' AND DATE NOT LIKE '%2022%';

SELECT COUNT(course_title)
FROM courses
WHERE DATE LIKE '%2022%';

SELECT COUNT(course_title)
FROM courses
WHERE DATE LIKE '%2023%';

-- Ratings to review ratio -- 0 till 1000
SELECT course_title, rating, review, rating/review*100 AS rating_review_ratio, students, instructor
FROM courses
WHERE review <= 1000;

-- Ratings to review ratio -- 1000 - 10,000
SELECT course_title, rating, review, rating/review*100 AS rating_review_ratio, students, instructor
FROM courses
WHERE review BETWEEN 1000  AND 10000;

-- Ratings to review ratio -- 10,000- 100,000
SELECT course_title, rating, review, rating/review*100 AS rating_review_ratio, students, instructor
FROM courses
WHERE review BETWEEN 10000 AND 100000;

-- Ratings to review ratio -- 100,000 above
SELECT course_title, rating, review, rating/review*100 AS rating_review_ratio, students, instructor
FROM courses
WHERE review BETWEEN 100000 AND 300000;

-- Price

-- Does price affect ratings? 

SELECT course_title, price, rating, price/rating*100 as 'Price/Rating ratio', instructor
FROM courses;

-- Does lower price means more students?
-- Count the unique values of price --
SELECT COUNT(PRICE), price
FROM courses
GROUP BY 2;

SELECT SUM(students), price
FROM courses
GROUP BY 2;

-- Which instructor gathers the most revenue? Kirill Eremenko
SELECT SUM(price), instructor
FROM courses
GROUP BY 2;

