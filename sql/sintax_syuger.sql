SELECT
    employee_id,
    employee_name,
    t.department,
    t2.position,
    salary,
    t.every_dapertment_avarage_salary,
    t2.every_position_avarage_salary
FROM employee
JOIN (
    SELECT
        department,
        AVG(salary) AS every_dapertment_avarage_salary
    FROM
        employee
    GROUP BY department
    ) AS t
ON employee.department = t.department
JOIN (
    SELECT
        position,
        AVG(salary) AS every_position_avarage_salary
    FROM
        employee
    GROUP BY position
    ) AS t2
ON employee.position = t2.position;
