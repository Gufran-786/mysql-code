-- Subqueries
-- A subquery is a SQL query written inside another SQL query.

-- Task 1: Find all employees whose salary is greater than the average salary of all employees.
-- Display: first_name, last_name, salary
-- Hint: You'll need AVG() inside a subquery.

-- Rough
SELECT 
AVG(salary)
FROM employee_salary;

SELECT 
		first_name,
		last_name,
		salary
FROM employee_salary
WHERE salary > (
	SELECT AVG(salary)
	FROM employee_salary);

-- Task 2 - Find employees who earn the highest salary in the company.
-- Display: first_name, last_name, salary, Hint
-- You'll need: MAX(salary) inside a subquery.
SELECT
		first_name,
        last_name,
        salary
FROM employee_salary
WHERE salary = (
	SELECT MAX(salary)
    FROM employee_salary);

-- Task 3 — Find all employees whose salary is greater than the average salary of their department.
-- Display: first_name, last_name, salary, dept_id
SELECT
		first_name,
        last_name,
        salary,
        dept_id
FROM employee_salary AS sal
WHERE sal.salary > (
	SELECT AVG(sal2.salary)    
    FROM employee_salary AS sal2
    WHERE sal2.dept_id = sal.dept_id);

-- IN    
-- Next task — IN with a subquery
-- Find employees who work in departments that have at least one employee earning more than 70,000.
-- Display: first_name, last_name, salary, dept_id.
-- Hint: First, write a subquery that finds the department IDs 
-- where an employee earns more than 70,000.
-- Then use IN in the outer query to find all employees in those departments.
SELECT
    sal.first_name,
    sal.last_name,
    sal.salary,
    sal.dept_id
FROM employee_salary AS sal
WHERE sal.dept_id IN (
    SELECT sal2.dept_id
    FROM employee_salary AS sal2
    WHERE sal2.salary > 70000
);

-- EXIST
-- Find employees who have at least one coworker in the same department earning more than ₹70,000.
-- Display: first_name, last_name, salary, dept_id
-- Remember to:
-- 1. Compare the inner employee's department with the outer employee's department.
-- 2. Check whether the inner employee earns more than 70000.
-- 3. Use EXISTS to check whether a matching row exists.

SELECT
		first_name,
        last_name,
        salary,
        dept_id
FROM employee_salary AS sal
WHERE EXISTS (
	SELECT 1
    FROM employee_salary AS sal2
    WHERE sal2.dept_id = sal.dept_id
    AND sal2.salary > 70000);

SELECT 
		first_name,
        last_name,
        salary,
        dept_id
FROM employee_salary AS sal
WHERE EXISTS (
	SELECT 1
    FROM employee_salary AS sal2
    WHERE sal2.dept_id = sal.dept_id
    AND sal2.salary > 70000
);

-- NOT EXISTS

SELECT
		sal.employee_id,
        sal.first_name,
        sal.last_name,
        sal.salary,
        sal.dept_id
FROM employee_salary AS sal
WHERE NOT EXISTS (
	SELECT 1
    FROM employee_salary AS sal2
    WHERE sal2.dept_id = sal.dept_id
    AND sal2.employee_id <> sal.employee_id
    AND sal2.salary > 70000
);