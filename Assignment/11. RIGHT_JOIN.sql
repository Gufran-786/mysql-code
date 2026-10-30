-- Task 1 — Show all records from employee_salary, 
-- including those that don't have matching information in employee_demographics.
-- Display: employee_id, first_name, last_name, occupation, salary
SELECT 
		dem.employee_id,
		dem.first_name,
		dem.last_name,
		sal.occupation,
		sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- Task 2 — Missing records - Find salary records 
-- that do not have a matching employee in employee_demographics.
-- Display: employee_id, occupation, salary
-- Sort by salary from highest to lowest.
SELECT 
		dem.employee_id,
        sal.occupation,
        sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE dem.employee_id IS NULL
ORDER BY sal.salary DESC;

-- Task 3 — Filtering - Show all salary records where:
-- salary is greater than 60000
-- include employee name if available
-- keep salary records even if demographic information is missing
-- Display: employee_id, first_name, last_name, salary
-- Sort salary DESC.
SELECT
		dem.employee_id,
        dem.first_name,
        dem.last_name,
        sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
WHERE sal.salary > 60000
ORDER BY sal.salary DESC;

-- Task 4 — Create a report containing every salary record with:
-- employee_id, first_name, last_name, occupation, salary, employee_status
-- Rules: If matching employee exists → 'Employee Found'
-- If no matching employee exists → 'Employee Missing'
-- Sort: Missing employees first
-- Then salary highest → lowest
-- Hint: You'll need RIGHT JOIN + CASE + ORDER BY.
SELECT 
		sal.employee_id, 
        dem.first_name, 
        dem.last_name, 
        sal.occupation, 
        sal.salary,
CASE
	WHEN dem.employee_id IS NULL THEN 'Employee_Missing'
    ELSE 'Employee_found'
END AS employee_status
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
ORDER BY dem.employee_id IS NULL,
dem.employee_id IS NULL DESC,
sal.salary DESC;
