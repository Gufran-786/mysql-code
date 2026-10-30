SELECT *
FROM employee_demographics;
  
SELECT *
FROM employee_salary;


SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age > 40 AND
gender <> 'Female';

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age > 40;

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age < 30;

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age = 44;

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age >= 50;

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE age <= 40;

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE gender = 'Female';

SELECT first_name, last_name, gender, age
FROM employee_demographics
WHERE gender <> 'Male';

SELECT first_name, age
FROM employee_demographics
WHERE age > 35;

SELECT first_name, last_name
FROM employee_demographics
WHERE age < 35;

SELECT first_name,
last_name,
age,
gender
FROM employee_demographics
WHERE age = 44;


























