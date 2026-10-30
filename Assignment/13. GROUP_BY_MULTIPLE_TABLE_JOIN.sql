-- Task 1 — Department summary - Using employee_salary and parks_departments, display:
-- Department name, Total employees, Total salary, Average salary
-- Sort by total salary, highest to lowest.
SELECT 
		park.department_name,
        COUNT(sal.employee_id) AS Total_employees,
        SUM(salary) AS Total_salary,
        AVG(salary) AS Average_salary
FROM employee_salary AS sal
INNER JOIN  parks_departments AS park
	ON sal.dept_id = park.department_id
GROUP BY park.department_id, park.department_name
ORDER BY Total_salary DESC;

-- Task 2 — Employee demographics report
-- Using all three tables, show the number of employees in each department, separated by gender.
-- Display: Department name, Gender, Employee count
-- Sort by department name and then employee count, highest first.
SELECT
		park.department_name,
        dem.gender,
        COUNT(sal.employee_id) AS Employee_Count
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
GROUP BY park.department_id,
		 park.department_name,
         dem.gender
ORDER BY park.department_name ASC,
Employee_Count DESC;

-- Task 3 — Department filtering
-- Find departments that satisfy both conditions:
-- At least 2 employees. & Average salary greater than 50,000.
-- Display: Department name, Employee count, Average salary
-- Sort by average salary, highest first.
SELECT 
		park.department_name,
        COUNT(sal.employee_id) AS Employee_Count,
        AVG(sal.salary) AS Average_Salary
FROM employee_salary AS sal
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
GROUP BY park.department_id,
		 park.department_name
HAVING COUNT(sal.employee_id) >= 2
AND AVG(sal.salary) > 50000
ORDER BY Average_Salary DESC;

-- Task 4 — Create a report showing every department, including departments with no employees.
-- Display: Department ID, Department name, Employee count, Total salary, Average salary, Department status
-- Rules: No employees → Empty
-- 1–2 employees → Small
-- More than 2 employees → Staffed
-- Requirements: Use LEFT JOIN. Use COUNT(), SUM(), and AVG().
-- Use CASE.
-- Group by department. Sort by employee count, highest to lowest.
SELECT 
		park.department_id,
		park.department_name,
        COUNT(sal.employee_id) AS employe_count,
        SUM(sal.salary) AS total_salary,
        AVG(sal.salary) AS average_salary,
CASE
	WHEN COUNT(sal.employee_id) = 0 THEN 'Empty'
    WHEN COUNT(sal.employee_id) <= 2 THEN 'Small'
    ELSE 'Staffed'
END AS Department_Status
FROM parks_departments AS park
LEFT JOIN employee_salary AS sal
	ON park.department_id = sal.dept_id
GROUP BY park.department_id,
		 park.department_name
ORDER BY employe_count DESC;






