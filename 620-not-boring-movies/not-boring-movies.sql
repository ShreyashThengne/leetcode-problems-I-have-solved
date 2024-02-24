-- Write your PostgreSQL query statement below
SELECT *
FROM Cinema
where not description = 'boring'
and id%2 = 1
order by rating DESC