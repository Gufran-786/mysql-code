-- String Function

-- SELECT length('Skyfall');

-- SELECT first_name, LENGTH(first_name)
-- FROM employee_demographics
-- ORDER BY 2

SELECT first_name, LEFT(first_name, 4),
SUBSTRING(first_name, 3, 2),
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;