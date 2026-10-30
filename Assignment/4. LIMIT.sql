-- BASIC
-- (Task 1) - Show only the first 5 employees from employee_demographics.
SELECT *
FROM employee_demographics
LIMIT 5;

-- (Task 2) - Show only the first 3 employees from employee_salary.
SELECT *
FROM employee_salary
LIMIT 3;


-- (Task 3) - Show first_name and age and display only 5 rows.
SELECT first_name, age
FROM employee_demographics
LIMIT 5;

-- (Task 4) - Show first_name, last_name, and salary and display only 3 rows.
SELECT first_name,
last_name,
salary
FROM employee_salary
LIMIT 3;


-- MEDIUM
-- (Task 5) - Show the 5 youngest employees.
SELECT *
FROM employee_demographics
ORDER BY age 
LIMIT 5;

-- (Task 6) - Show the 5 oldest employees.
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 5;

-- (Task 7) - Show the 3 employees with the lowest salary.
SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary
LIMIT 3;

-- (Task 8) - Show the 3 employees with the highest salary.
SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary DESC
LIMIT 3;

-- (Task 9) - Show only 3 female employees.
SELECT first_name, last_name, gender
FROM employee_demographics
WHERE gender = 'Female'
LIMIT 3;

-- (Task 10) - Show only 3 employees whose age is greater than 40.
SELECT first_name, last_name, age
FROM employee_demographics
WHERE age > 40
LIMIT 3;

-- DIFFICULT
-- (Task 11) - Show the 3 oldest female employees.
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE gender = 'Female'
ORDER BY age DESC
LIMIT 3;

-- (Task 12) - Show the 3 youngest male employees.
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE gender = 'Male'
ORDER BY age ASC
LIMIT 3;

-- (Task 13) - Show the 5 employees whose age is greater than 30, starting with the oldest
SELECT first_name, 
last_name,
age
FROM employee_demographics
WHERE age > 30
ORDER BY age DESC
LIMIT 5;

-- (Task 14) - Show the 3 highest-paid employees whose salary is greater than 50,000
SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 3;

-- (Task 15) - Show the 2 lowest-paid employees whose salary is less than 100,000.
SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary < 100000
ORDER BY salary
LIMIT 2;

-- TOUGHEST ASSIGNMENT

-- Task 16 Show: first_name, last_name, age, gender
-- for female employees older than 30, sorted from oldest to youngest, and show only the top 3.
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE gender = "Female"
AND age > 30
ORDER BY age DESC
LIMIT 3;

-- Task 17 Show: first_name, last_name, occupation, salary
-- for employees whose salary is greater than 50,000,
-- sorted from highest salary to lowest, and show only the top 5.

SELECT
first_name,
last_name,
occupation,
salary
FROM employee_salary
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 5;

-- Task 18 Show: first_name, , age, gender
-- for employees who are:
-- younger than 30 OR older than 50
-- sorted by age from oldest to youngest
-- show only 4 employees

SELECT
first_name,
last_name,
age,
gender
FROM employee_demographics
WHERE age < 30
OR age > 50
ORDER BY age DESC
LIMIT 4;

-- (Task 19) -Show: first_name, last_name, salary

-- for employees whose salary is not greater than 100,000, 
-- sorted from lowest salary to highest, and show only 5 employees.

SELECT
first_name,
last_name,
salary
FROM employee_salary
WHERE salary <= 100000
ORDER BY salary
LIMIT 5;

-- (Task 20) - FINAL CHALLENGE. Write a query showing: 
-- first_name
-- last_name
-- occupation
-- salary
-- from employee_salary where:
-- salary is greater than 50,000
-- AND salary is less than 200,000
-- sorted from highest salary to lowest
-- show only the top 3

SELECT
first_name,
last_name,
occupation,
salary
FROM employee_salary
WHERE salary > 50000
AND salary < 200000
ORDER BY salary DESC
LIMIT 3;


