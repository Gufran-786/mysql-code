-- (Task 1) - Show all employees from employee_demographics sorted by age from youngest to oldest.
SELECT first_name, age
FROM employee_demographics
ORDER BY age;

-- (Task 2) - Show all employees sorted by age from oldest to youngest.
SELECT first_name, age
FROM employee_demographics
ORDER BY age DESC;

-- (Task 3) - Show first_name and age, sorted by first_name A → Z.
SELECT first_name, age
FROM employee_demographics
ORDER BY first_name;

-- (Task 4) - Show first_name and age, sorted by first_name Z → A.
SELECT first_name, age
FROM employee_demographics
ORDER BY first_name DESC;

-- (Task 5) - Show employees whose age is greater than 30, sorted from youngest to oldest.
SELECT first_name, last_name, age
FROM employee_demographics
WHERE age > 30
ORDER BY first_name;

-- (Task 6) - Show employees whose age is less than 40, sorted from oldest to youngest.
SELECT first_name, age
FROM employee_demographics
WHERE age < 40
ORDER BY first_name DESC;

-- (Task 7) - Show first_name, last_name, and salary from employee_salary, sorted by salary from lowest to highest.
SELECT first_name, last_name, salary
FROM employee_salary
ORDER BY salary;

-- (Task 8) - Show first_name, last_name, and salary from employee_salary, sorted by salary from highest to lowest.
SELECT first_name, last_name, salary 
FROM employee_salary
ORDER BY salary DESC;

-- (Task 9) - Show female employees sorted by age from oldest to youngest.
SELECT first_name, age, gender
FROM employee_demographics
WHERE gender = 'Female'
ORDER BY age DESC;

-- (Task 10 🔥) Show:first_name, last_name, gender, age for employees whose age is greater than 30, and arrange them from oldest to youngest.

SELECT first_name,
last_name,
gender,
age
FROM employee_demographics
WHERE age > 30
ORDER BY age DESC;


























