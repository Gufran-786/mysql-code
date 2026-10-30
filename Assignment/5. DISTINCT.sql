-- Task 1 — Basic
-- Show all different genders in employee_demographics.
SELECT DISTINCT gender
FROM employee_demographics;

-- Task 2 - Show all different occupations in employee_salary.
SELECT DISTINCT occupation
FROM employee_salary;

-- Task 3 - Show all different combinations of: gender, age

SELECT DISTINCT
gender,
age
FROM employee_demographics;

-- Task 4 - 
-- Show the different occupations of employees whose salary is greater than 50,000.
-- Arrange the occupations A → Z.
SELECT DISTINCT occupation
FROM employee_salary
WHERE salary > 50000
ORDER BY occupation ASC;

-- Task 5 - Show the different salary values from employee_salary, sorted from highest to lowest.
SELECT DISTINCT salary
FROM employee_salary
ORDER BY salary DESC;

-- Task 6 Show the different combinations of: occupation, dept_id
-- from employee_salary.
-- Sort them by occupation A → Z.

SELECT DISTINCT
occupation,
dept_id
FROM employee_salary
ORDER BY occupation;

-- Task 7 Show the 5 different occupations of employees whose salary is greater than 50,000, arranged alphabetically.
SELECT DISTINCT occupation
FROM employee_salary
WHERE salary > 50000
ORDER BY occupation ASC
LIMIT 5;

-- Task 8 - Show the 3 different combinations of gender and age for employees whose age is greater than 30.
-- Arrange the result by age from oldest to youngest.
-- Your result should contain: gender, age
-- and only 3 unique combinations.
SELECT DISTINCT
gender, age
FROM employee_demographics
WHERE age > 30
ORDER BY age DESC
LIMIT 3;