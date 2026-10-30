SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;

-- Task 1 — Show:first_name, salary, salary_level
-- Classify employees:
-- salary < 60,000       → Low
-- salary 60,000–99,999  → Medium
-- salary 100,000+       → High

SELECT first_name, salary,
CASE
	WHEN salary < 60000 THEN 'Low'
    WHEN salary >= 60000 AND salary < 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_level
FROM employee_salary;

-- Task 2 — Show: first_name, age, age_group
-- Classify employees:
-- under 30 → Young
-- 30–49    → Adult
-- 50+      → Senior

SELECT first_name, age,
CASE
	WHEN age < 30 THEN 'Young'
    WHEN age >= 30 AND age < 50 THEN 'Adult'
    ELSE 'Senior'
END AS age_group
FROM employee_demographics;

-- Task 3 — Show: first_name, last_name, salary, salary_level
-- Classify:
-- < 50,000        → Low
-- 50,000–99,999   → Medium
-- 100,000–149,999 → High
-- 150,000+        → Very High
-- Then show only employees whose salary is greater than 40,000,
-- and arrange them from highest salary to lowest.

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN 'Low'
    WHEN salary >= 50000 AND salary < 100000 THEN 'Medium'
    WHEN salary >= 100000 AND salary < 150000 THEN 'High'
    ELSE 'Very High'
END AS salary_level
FROM employee_salary
WHERE salary > 40000
ORDER BY salary DESC;

-- Task 4 - Create a salary classification and then 
-- find how many employees belong to each salary level.
-- Your result should contain:
-- salary_level
-- employee_count
SELECT
CASE
    WHEN salary < 60000 THEN 'Low'
    WHEN salary < 100000 THEN 'Medium'
    ELSE 'High'
END AS salary_level, COUNT(*) AS employee_count
FROM employee_salary
GROUP BY salary_level;