-- Trigger Assignment

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
	CREATE TRIGGER employee_auto_copy
    AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (15, 'Michael', 'Scott', 'Manager', 90000, 1);








