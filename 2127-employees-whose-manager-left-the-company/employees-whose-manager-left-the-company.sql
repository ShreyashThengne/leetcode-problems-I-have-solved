-- Write your PostgreSQL query statement below
SELECT employee_id
FROM employees
WHERE salary < 30000
and manager_id not in (SELECT employee_id FROM Employees)
order by EMployee_id