SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id
= employee_salary.employee_id;


-- Task 1 — Join: employee_demographics employee_salary
-- using employee_id.
-- Show: first_name, last_name, age, occupation, salary
SELECT 
       dem.first_name,
	   dem.last_name,
       dem.age,
       sal.occupation,
       sal.salary
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;

-- Task 2 — JOIN + WHERE
-- Show employees who are older than 40.
-- Return: first_name, last_name, age, occupation, salary
SELECT 
		dem.first_name,
        dem.last_name,
        dem.age,
        sal.occupation,
        sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.age > 40;

-- Task 3 — JOIN + multiple conditions
-- Show employees who: are older than 30 & have salary greater than 50,000
-- Return their name, age, occupation and salary.
SELECT 
		dem.first_name,
		dem.age,
        sal.occupation,
        sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.age > 30
AND sal.salary > 50000;

-- Task 4 — JOIN + ORDER BY
-- Show all employees with:, first_name, last_name, occupation, salary
-- Sort them from highest salary to lowest.
SELECT 
		dem.first_name,
        dem.last_name,
        sal.occupation,
        sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
ORDER BY sal.salary DESC;
        
-- Task 5 — Production-style
-- Show employees who: (i)are Female, (ii)are older than 30 (iii)and earn more than 50,000
-- Return: first_name, last_name, age, gender, occupation, salary
-- Sort by salary from highest to lowest.
SELECT 
		dem.first_name,
        dem.last_name,
        dem.age,
        dem.gender,
        sal.occupation,
        sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.gender = 'Female'
AND dem.age > 30 
AND sal.salary > 50000
ORDER BY sal.salary DESC;


-- Task 6 — Create a report containing:
-- employee_id, first_name, last_name, age, gender, occupation, salary
-- Join the two tables and show only employees who:
-- (i) are not Female
-- (ii) age is between 30 and 50
-- (iii) salary is greater than 60,000
-- Sort by: salary highest → lowest
-- If two employees have the same salary, sort their first names A → Z

SELECT 
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		dem.age,
		dem.gender,
		sal.occupation,
		sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.gender <> 'Female'
AND dem.age >= 30 AND age < 50
AND sal.salary > 60000
ORDER BY sal.salary DESC,
dem.first_name ASC;