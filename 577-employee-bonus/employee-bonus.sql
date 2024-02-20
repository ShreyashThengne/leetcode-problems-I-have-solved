-- Write your PostgreSQL query statement below
SELECT e.name, b.bonus
FROM employee as e LEFT JOIN bonus as b using(empId)
where b.bonus is null or b.bonus < 1000;