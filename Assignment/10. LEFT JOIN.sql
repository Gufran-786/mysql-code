-- Task 1 — LEFT JOIN
-- Show: employee_id, first_name, last_name, occupation, salary
-- Use employee_demographics as the left table.

SELECT 
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		sal.occupation,
		sal.salary
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;


-- Task 2 — LEFT JOIN + NULL
-- Find employees who do not have salary information.
-- Show: employee_id, first_name, last_name
SELECT 
		dem.employee_id,
        dem.first_name,
        dem.last_name
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE sal.employee_id IS NULL;

-- Task 3 — LEFT JOIN + WHERE
-- Show all employees older than 40, 
-- including employees who don't have salary information.
-- Show:
-- first_name, last_name, age, occupation, salary

SELECT 
		dem.first_name,
		dem.last_name,
		dem.age,
		sal.occupation,
		sal.salary
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.age > 40;

-- Task 4 — LEFT JOIN + NULL + CASE
-- Create a column called: salary_status
-- Rules:
-- salary is NULL → 'Missing'
-- salary < 60000 → 'Low'
-- salary < 100000 → 'Medium'
-- otherwise → 'High'
-- Show: first_name, salary, salary_status
SELECT 
		dem.first_name,
        sal.salary,
CASE
	WHEN sal.salary IS NULL THEN 'Missing'
    WHEN sal.salary < 60000 THEN 'Low'
    WHEN sal.salary < 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_status
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- Task 5 — Find employees who exist in employee_demographics 
-- but don't have a matching record in employee_salary.
-- Show: employee_id, first_name, last_name, age, gender
-- Sort by: age DESC
                    
SELECT
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		dem.age,
		dem.gender
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE sal.employee_id IS NULL
ORDER BY dem.age DESC;

-- Task 6 — Create a report showing every employee from employee_demographics, 
-- whether or not they have salary information.
-- Show:
-- employee_id
-- first_name
-- last_name
-- age
-- occupation
-- salary
-- salary_status
-- Rules for salary_status:
-- No salary record → 'No Salary Record'
-- salary < 50000    → 'Low'
-- 50000–99999      → 'Medium'
-- 100000+          → 'High'
-- Sort:
-- Employees with no salary record first
-- Then highest salary to lowest
SELECT 
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		dem.age,
		sal.occupation,
		sal.salary,
CASE
	WHEN sal.salary IS NULL THEN 'No Salary Record'
    WHEN sal.salary < 50000 THEN 'Low'
    WHEN sal.salary < 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_status
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
ORDER BY sal.salary IS NOT NULL,
sal.salary DESC;