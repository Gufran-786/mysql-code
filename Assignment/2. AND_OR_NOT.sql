-- SELECT *
-- FROM employee_demographics;
--   
-- SELECT *
-- FROM employee_salary;

-- Task 1
SELECT first_name, age, gender
FROM employee_demographics
WHERE age > 40
AND gender = 'Female';

-- Task 2
SELECT first_name, age, gender
FROM employee_demographics
WHERE age < 30
AND gender = 'Male';

-- Task 3
-- Show employees whose age is greater than 50 OR gender is Female.
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE age > 50
OR gender = 'Female';

-- Task 4
-- Show employees whose age is less than 30 OR age is greater than 50.
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE age < 30 
OR age > 50

-- (Task 5) - Show employees whose gender is not Female.
SELECT first_name, last_name, age, gender
FROM employee_demographics
WHERE NOT gender = 'Female';

-- (Task 6) - Show employees whose gender is not Male AND age is greater than 40.
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE NOT gender = 'Male'
AND age > 40;

-- (Task 7) - Show employees whose age is greater than 30 AND less than 50.
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age > 30
AND age < 50;

-- (Task 8) - Show employees whose age is exactly 44 OR exactly 55.
SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age = 44
OR age = 55;

-- (Task 9) - Show employees whose age is greater than 40 AND gender is not Female.
SELECT first_name,
last_name, 
gender, 
age
FROM employee_demographics
WHERE age > 40
AND NOT gender = 'Female';

-- Task 10 🔥
SELECT first_name,
last_name, 
gender, 
age
FROM employee_demographics
WHERE age > 30
AND gender = 'Female'









































