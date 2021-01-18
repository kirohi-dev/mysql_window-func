SELECT
    employee_id,
    employee_name,
    department,
    position,
    salary,
    AVG(salary) OVER( PARTITION BY department) AS every_dapertment_avarage_salary,
    AVG(salary) OVER( PARTITION BY position) AS every_position_avarage_salary
FROM employee;
