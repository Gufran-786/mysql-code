SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) 
FROM employee_demographics
GROUP BY gender;

-- ORDER BY
-- SELECT *
-- FROM employee_demographics
-- ORDER BY 5, 4;

-- HAVING VS WHERE
SELECT gender, AVG(age) 
from employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

-- LIMIT ALLIASING
SELECT *
FROM employee_demographics
LIMIT 3;

-- JOINS
SELECT *
from employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_santa,
emp2.last_name AS last_name_santa
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    INNER JOIN parks_departments pd
    ON sal.dept_id = pd.department_id;

-- Union

-- SELECT first_name, last_name
-- FROM employee_demographics;
-- UNION ALL
-- SELECT first_name, last_name
-- FROM employee_salary;



















