-- Write your PostgreSQL query statement below
SELECT teacher_id, count(distinct subject_id) as cnt
FROM teacher
group by teacher_id