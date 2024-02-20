-- Write your PostgreSQL query statement below
SELECT e2.unique_id, e1.name
FROM Employees as e1 left JOIN EmployeeUNI as e2
on e1.id = e2.id;