-- Task 1 Show each occupation and the number of employees in that occupation.
SELECT occupation, COUNT(*) AS employee_count
FROM employee_salary
GROUP BY occupation;

-- Task 2 Show each gender and the number of employees of each gender.
SELECT gender, COUNT(*) AS employees
FROM employee_demographics
GROUP BY gender;

-- Task 3 - Show each occupation and the total salary paid to that occupation.
SELECT occupation, SUM(salary) AS total_salary
FROM employee_salary
GROUP BY occupation;

-- Task 4 Show each occupation and its average salary.
-- Use AVG() and give the result the alias:
SELECT occupation, AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY occupation;

-- Task 5 - Show each occupation and its highest salary, 
-- but only consider employees whose salary is greater than 50,000.
SELECT occupation, MAX(salary)
FROM employee_salary
WHERE salary > 50000
GROUP BY occupation;

-- Task 6
-- Show each occupation and the number of employees, 
-- but only count employees whose salary is greater than 50,000.
-- Then arrange the result from highest employee count to lowest.
SELECT occupation, COUNT(*) AS employee_count
FROM employee_salary
WHERE salary > 50000
GROUP BY occupation
ORDER BY employee_count DESC;

-- Task 7 - Show the top 3 occupations based on total salary.
SELECT occupation, SUM(salary) AS total_salary
FROM employee_salary
GROUP BY occupation
ORDER BY total_salary DESC
LIMIT 3; 

-- Task 8 — Final Challenge
-- Find the top 3 departments based on average salary, considering only employees 
-- whose salary is greater than 40,000.
-- Return:
-- dept_id
-- average_salary
SELECT dept_id, AVG(salary) AS average_salary
FROM employee_salary
WHERE salary > 40000
GROUP BY dept_id
ORDER BY average_salary DESC
LIMIT 3;