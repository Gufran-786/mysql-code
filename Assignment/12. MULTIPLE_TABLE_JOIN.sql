DESCRIBE employee_demographics;

DESCRIBE employee_salary;

SHOW TABLES;

SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DESCRIBE parks_departments;

-- Task 1 — Basic 3-table JOIN. Show:
-- employee_id, first_name, last_name, occupation, salary, department_name
-- Use all 3 tables.

SELECT
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		sal.occupation,
		sal.salary,
		park.department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id;
    
-- Task 2 — Filtering across tables
-- Show employees who: are older than 30 & earn more than 50,000
-- display their department name
-- Display:, first_name, last_name, age, salary, department_name
-- Sort salary highest → lowest.

SELECT
		dem.first_name,
		dem.last_name,
		dem.age,
		sal.salary,
		park.department_name	
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
WHERE dem.age > 30
AND sal.salary > 50000
ORDER BY sal.salary DESC;

-- Task 3 — Department filtering
-- Show employees who work in the IT department and earn more than 60,000.
-- Display: employee_id, first_name, last_name, occupation, salary, department_name

SELECT
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		sal.occupation,
		sal.salary,
		park.department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
WHERE park.department_name = 'IT'
AND sal.salary > 60000;

-- Task 4 — Create an employee report containing:
-- employee_id, full_name, age, occupation, salary, department_name, salary_level
-- Rules for salary_level:
-- salary < 50,000       → Low
-- 50,000–99,999         → Medium
-- 100,000+              → High
-- Requirements: Use all 3 tables, Create full_name using CONCAT()
-- Use CASE
-- Sort by department_name ASC
-- Within each department, salary DESC
-- This task combines:
-- 3-table JOIN + CONCAT + CASE + ORDER BY

SELECT
		dem.employee_id,
		CONCAT(dem.first_name, ' ', dem.last_name) AS full_name,
		dem.age,
		sal.occupation,
		sal.salary,
		park.department_name,
CASE
	WHEN salary < 50000 THEN 'Low'
    WHEN salary >= 50000 AND salary < 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_level
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
    ORDER BY park.department_name ASC,
    sal.salary DESC;