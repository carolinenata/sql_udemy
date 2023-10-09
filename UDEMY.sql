-- Top 100 Courses in Udemy
-- Many job seekers are aiming to be a data analyst, but many of them don't have the necessary skills or educational
-- background. In order to help them, this project is going to take the top 100 'Data Analyst' courses in Udemy and drive insights 
-- and observations so job seekers can pick the right course for them. The data was manually scraped using Google Chrome's web scraper
-- and taken on 5 October 2023.

# 1. Count the number of courses with the following skills: Python, SQL, Excel, Tableau, Power BI, Machine Learning, and R Programming.
-- Results: Python Courses: 21, SQL Courses: 13, Excel Courses: 20, Tableau Courses: 12, R Programming: 1, Power BI: 12, Machine Learning: 8
-- Insights: Python is the most popular subject for Data Analyst in Udemy. Python is a versatile programming language. On the other hand, R Programming is the least popular subject 

SELECT COUNT(course_title) AS 'Number of Python Courses'
FROM courses
WHERE course_title LIKE '%Python%';

SELECT COUNT(course_title) AS 'Number of SQL Courses'
FROM courses
WHERE course_title LIKE '%sql%';

SELECT COUNT(course_title) AS 'Number of Excel Courses'
FROM courses
WHERE course_title LIKE '%excel%';

SELECT COUNT(course_title) AS 'Number of Tableau Courses'
FROM courses
WHERE course_title LIKE '%tableau%';

SELECT COUNT(course_title) AS 'Number of R Courses'
FROM courses
WHERE course_title LIKE '%R Programming%';

SELECT COUNT(course_title) AS 'Number of Power BI Courses'
FROM courses
WHERE course_title LIKE '%power bi%';

SELECT COUNT(course_title) AS 'Number of Machine Learning Courses'
FROM courses
WHERE course_title LIKE '%machine learning%';




# 2. Find the highest rated class in Udemy based on the specific subjects taught.
-- Python: 'Business Data Analytics & Intelligence with Python' by Andrei Neagole 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY rating DESC;

-- SQL: 'Databricks SQL for Data Analysis' by Malvik Vaghadia 4.7
SELECT course_title, rating, instructor 
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY rating DESC;        

-- Excel: 'Data Analysis Excel for Beginners' by Kawser Ahmed 4.8
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY rating DESC;   

-- Tableau: 'Tableau Certified Data Analyst' by Jed Guinto 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY rating DESC;          
        
-- Power BI: 'Data Analyst Toolbox: Excel, SQL, POWERBI' by Vardges Zardaryan 4.6
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY rating DESC;   

-- R Programming:  'R Programming: Advanced Analytics' by Kirill Eremenko 4.7
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY rating DESC;   

-- Machine Learning: 'Python for Machine learning & data science' by Jose Portilla 4.7	
SELECT course_title, rating, instructor
FROM courses
WHERE course_title LIKE '%machine learning%'
ORDER BY rating DESC;   



# 3. Find the class with the highest students based on the specific subject to know which courses are the most trustworthy among students

-- Python: '100 days of Code' Dr Angela Yu, 1,030,009 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY students DESC;   

-- SQL: 'SQL, MySQL for Data Analysts and Business Intelligence' by 365 Careers 216,985
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY students DESC;   


-- Excel: 'Microsoft Excel: Data Analysis with Excel Pivot Tables' by Maven Analytics 224,792 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY students DESC;   


-- Tableau: 'Tableau 2022 A-Z Hands On' by Kirill Eremenko, 363,469
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY students DESC;   

-- Power BI: 'PL-300 Cerficiation: Microsoft Power BI Data Analyst' Philip Burton 91,216 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY students DESC;   

-- R Programming: 'R Programming A-Z' ny Kirill Eremenko 260050 students
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY students DESC;   


-- Machine Learning: 'Python for Data Science and Machine Learning' Jose Portilla 668,792
SELECT course_title, students, instructor
FROM courses
WHERE course_title LIKE '% machine learning%'
ORDER BY students DESC;   






#4. Find the course with the longest hours based on the subject category. 
-- Python: '100 days of code' by Dr. Angela Yu 57 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%python%'
ORDER BY time DESC;   

# Insight: Angela Yu's course has the most students and the longest time for Python, but not the most rated. 


--  SQL:'Data Engineering Essentials using SQL' by Durga Viswanatha 56 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%sql%'
ORDER BY time DESC;   


-- Excel: 'The Microsoft Excel Data Analysis Toolkit Bundle' - Simon Sez IT 32 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%excel%'
ORDER BY time DESC;   


-- Tableau: '2023-24 Tableau Desktop' Jed Guinto 52 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%tableau%'
ORDER BY time DESC;   

#Insight: Jed Guinto's course has the longest time and highest rated course in Tableau. 


-- Power BI: 'PL-300 Certification': Microsoft Power BI Data Analyst 29 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%power bi%'
ORDER BY time DESC;   

#Insight: Philip Burton's course has the highest hours and the most students in Power BI course. 


-- R programming: 'R Programming A-Z' Kirill Eremenko
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%r programming%'
ORDER BY time DESC;   


-- Machine Learning: 'Python for Machine Learning & Data Science' by Jose Portila 44 hours
SELECT course_title, time, instructor
FROM courses
WHERE course_title LIKE '%machine learning%'
ORDER BY time DESC; 

# Insight: Jose Portilla has the highest amount of students, highest rated course, and longest course in Udemy in Machine Learning category. 



#5. Sorting classes based on category and amount per year
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

# Insight: Most classes are still updated in 2023, showing that Data Analyst skills demand has been increasing this year.




#5. Find the class with the highest rating. 'Data Analyst Portfolio creation' 4.9 
-- Best Classes in 2023
-- Data Analyst Portfolio Creation, Data Bricks for Data Analysis
SELECT course_title AS 'Best classes in 2023', rating, date, instructor
FROM courses
WHERE date LIKE '%2023%' AND rating >= 4.8;

-- Best Classes in 2022
-- Mastering Data Visualization and Data Analytics Intro to SQL Healthcare 4.7
SELECT course_title AS 'Best Class in 2022', rating, date
FROM courses
WHERE date like '%2022%' AND rating >= 4.7;

-- Best Classes in 2022 behind -- 
-- Data Analysis: Excel for Beginners 4.8
SELECT course_title, rating, date
FROM courses
WHERE date NOT LIKE '%2023%' AND date NOT LIKE '%2022%' AND rating >=4.8;




#6. Find the number of students from the highest rated class
-- Data Analyst Portfolio Creation 145 students 4.9
SELECT course_title, students, rating
FROM courses
WHERE rating >=4.5
ORDER BY rating DESC;

#Insight :Even though this course has the highest rating, it does not have lots of students. Other courses tend to be lower because they have more students, thus more varied ratings.



#7.Find the number of students in the longest class
-- 100 days of code' 1,030,009 students, 57 hours, 4.7
SELECT course_title, students, time, rating
FROM courses
ORDER BY students DESC;



#8. Instructor with the highest hour
-- Kirill Eremenko: 151 hours
SELECT instructor, sum(time) as 'total hours'
FROM courses
GROUP BY 1
ORDER BY 'total hours' DESC;

#9. Instructor with the highest average rating. Joseph Okon - 4.8
SELECT instructor, avg(rating)
FROM courses
GROUP BY 1 ;

#10 Instructor with the highest student. Kirill Eremenko 2,355,717
SELECT instructor, sum(students)
FROM courses
GROUP BY 1;

#Insight: Kirill Eremenko has the highest student and the longest hours with an average rating of 4.5 He is an experienced tutor with more or less decent reviews.

#11. Rating to Review Ratio
SELECT course_title, rating, review, (rating/review) AS "Rating to Review Ratio", instructor
FROM courses
ORDER BY (rating/review) DESC ;

#Insight: 'The Comprehensive Data Analyst Course' by Newton Academy might have the most result (0.75) but they only have 6 reviews. The higher the review, the lower the rating/review ratio. The one with the lowest rating/review ratio is '100 days of code' by Angela Yu. The course with over 100,000+ reviews with the highest rating/review(0.0000353) is 'Data Science Course' by 365 Careers, with 4.6 rating with 130,000+ reviews. We can conclude this course is the most positively reviewed one.

#12. Sort out the amount of classes based on dates
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

#13. Price to Ratings Ratio. Does higher/lower price means higher ratings?
SELECT course_title, price, rating, rating/price*100 as 'Rating/Price ratio', instructor
FROM courses;

#Insight: The top 4 results with high rating/price ratio (0.0028 ranges) have courses with price 159,000 with ratings of 4.5 and above. However, the fifth result has course with price 699,000 with a relatively high rating 4.6. (SQL- MySQL for Data analytics 365 Careers). The lowest rating/price ratio is 'The Comprehensive Data Analyst Course' by Newton Academy with a price 149,000 and with a rating of 4.5 We can conclude that price don't really affect ratings that much.

#14. Count the number of prices in the courses. Most classes are priced at 159,000 thousand (49 classes). The outlier is 1 class, which is priced at 1,590,000
SELECT COUNT(PRICE), price
FROM courses
GROUP BY 2;

#15. Sum of students vs price. 5,457,908 students enrolled in classes with 159,000. More students are attracted with lower price
SELECT SUM(students), price
FROM courses
GROUP BY 2;

#16. Which instructor gathers the most revenue?
-- Which instructor gathers the most revenue? Kirill Eremenko
SELECT SUM(price), instructor
FROM courses
GROUP BY 2;

#17. Ratings to price ratio. Which course is the most worth it for you? Most worth: 'Data Science Course' rating 4.6, review 130,311, price 159,000
SELECT course_title, review, price, rating, rating/price*100 as 'rating/price ratio', instructor
FROM courses
ORDER BY price/review*100 DESC;

#Insight: 'Comprehensive Data Analyst Course' has the highest review/price ratio, but they only have 6 reviews. The class with more than 100,000+ review with the highest rating/price ratio is The Data Science Course Complete bootcamp with a rating of 4.6 and 159,000 price


#18. Ratings Count.
#Most courses are rated 4.5 (23), and only 1 course is rated 4.9
SELECT rating, COUNT(course_title)
FROM courses
GROUP BY 1;

#19. Ratings/review/price count for Python, Excel and SQL. They are subjects that does not have clear insight patterns yet from the above compared to the rest of the courses. Use the rating/price ratio to decide which courses is worth it

SELECT course_title, rating/price*100 as 'rating to price ratio', review, instructor, rating
FROM courses
WHERE course_title like '%python%'
ORDER BY rating/price*100 DESC;

#Angela Yuu, 200,000+ reviews, 0.003 rating/price ratio, rating 4.7

SELECT course_title, rating/price*100 as 'rating to price ratio', review, instructor, rating
FROM courses
WHERE course_title like '%sql%'
ORDER BY rating/price*100 DESC;

-- 'Data Analysis Skillpath Zero to Hero', 2620 reviews, Star Tech Acaddemy, 4.6
-- Notable mention, 'SQL for Data Analytics' , 53,044 reviews, 4.6 BUT has the lowest amount of rating/price ratio

SELECT course_title, rating/price*100 as 'rating to price ratio', review, instructor, rating
FROM courses
WHERE course_title like '%excel%'
ORDER BY rating/price*100 DESC

-- Microsoft Excel: Data Visualization, Excel Charts & Graph -- Maven Analytics, 42,994 reviews with 4.6 ratings



#Conclusion:
#Which course I recommend based on this analysis?

-- If you want good money value based on ratings, reviews and price: The Data Science Course: Complete Data Science Bootcamp by 365 Careers

-- If you want course based on the highest overall positive review:'Data Science Course' by 365 Careers, with 4.6 rating with 130,000+ reviews.

-- If you want to select the most trusted tutor in this list: Kirill Eremenko has an overall rating of 4.5 , 151 hours with over 2 million students. He is the instructor with the highest total hour and students. He is also the instructor who creates the only R Programming course that make it to top 100 classes in Udemy.

-- If you want to support new courses: Data Analyst Portfolio with an overall rating of 4.9. It only has 145 students by Joseph Okon.

-- Courses I do not recommend: Newton Academy only has 6 reviews but with an overall rating of 4.5, which is not good compared to other courses that have 100,000+ plus reviews but have an overall rating of 4.5 

-- Courses I recommend for Tableau: Jed Guinto's Tableau's course has the longest time and highest rated course in Tableau. 

-- Courses I recommend for Power BI: Philip Burton's Power BI course has the highest hours and the most students in Power BI course. 

-- Courses I recommend for Machine Learning: Jose Portilla's Machine Learning course the highest amount of students, highest rated course, and longest course.

-- Courses I recommend for R Programming: Kirill Eremenko's R course is the only course that make it to top 100 classes in Udemy, so I recommend it. 

-- Courses I recommend for Python:  Angela Yuu's Python course have the highest students and highest reviews, with an overall review of 4.7. 

-- Course I recommend for SQL'Data Analysis Skillpath Zero to Hero', 2620 reviews, Star Tech Acaddemy, 4.6
-- Notable mention, 'SQL for Data Analytics' , 53,044 reviews, 4.6 BUT has the lowest amount of rating/price ratio

-- Courses I recommend for Excel: Microsoft Excel: Data Visualization, Excel Charts & Graph -- Maven Analytics, 42,994 reviews with 4.6 ratings


