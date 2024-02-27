-- Write your PostgreSQL query statement below
SELECT class
FROM Courses
group by class
having count(student) >= 5