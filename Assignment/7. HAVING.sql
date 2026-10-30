SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT occupation, COUNT(*) AS number_of_employees
FROM employee_salary
GROUP BY occupation;

-- Task 1 - Show each occupation and the number of employees in it.
-- Then show only occupations having more than 2 employees.
SELECT occupation, COUNT(*) AS number_of_employees
FROM employee_salary
GROUP BY occupation
HAVING number_of_employees > 2;

-- Task 2 - Show each occupation and its total salary.
-- Show only occupations whose total salary is greater than 150,000.
SELECT occupation, SUM(salary) AS total_salary
FROM employee_salary
GROUP BY occupation
HAVING total_salary > 150000;

-- Task 3 - Show each occupation and its average salary.
-- Show only occupations whose average salary is greater than 60,000.
SELECT occupation, AVG(salary) AS average_salary
FROM employee_salary
GROUP BY occupation
HAVING average_salary > 60000;

-- Task 4 - Show each gender and the number of employees.
-- Show only genders having more than 3 employees.
SELECT gender, COUNT(*) AS number_of_employees
FROM employee_demographics
GROUP BY gender
HAVING number_of_employees > 3;

-- Task 5 - Show each occupation and employee count, but:
-- only consider employees whose salary is greater than 50,000
-- show only occupations having at least 2 such employees

SELECT occupation, COUNT(*) AS employee_count
FROM employee_salary
WHERE salary > 50000
GROUP BY occupation
HAVING employee_count >= 2;

-- Task 6 - Show each department's: dept_id, average_salary, employee_count
-- Only include departments where:
-- average salary is greater than 60,000 & employee count is at least 2
SELECT dept_id, AVG(salary) AS average_salary, COUNT(*) AS employee_count
FROM employee_salary
GROUP BY dept_id
HAVING average_salary > 60000
AND employee_count > 2;

-- Task 7 - Show the top 3 occupations based on the highest total salary, 
-- but only include occupations whose total salary is greater than 100,000.
SELECT occupation, SUM(salary) AS total_salary
FROM employee_salary
GROUP BY occupation
HAVING total_salary > 100000
ORDER BY total_salary DESC
LIMIT 3;

-- Task 8 — Show: dept_id, average_salary, employee_count
-- for departments where:
-- employees' salary is greater than 40,000 department has at least 2 employees
-- average salary is greater than 60,000
-- Then: sort by average_salary from highest to lowest
-- 	  show only the top 3 departments

SELECT dept_id, AVG(salary) AS average_salary, COUNT(*) AS employee_count
FROM employee_salary
WHERE salary > 40000
GROUP BY dept_id
HAVING employee_count >= 2
AND average_salary > 60000
ORDER BY average_salary DESC
LIMIT 3;


