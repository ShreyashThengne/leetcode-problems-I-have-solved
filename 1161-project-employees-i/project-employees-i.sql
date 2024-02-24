-- Write your PostgreSQL query statement below
SELECT project_id, round(avg(experience_years), 2) as average_years
FROM project as p
left join employee as e
using(employee_id)
group by p.project_id