-- Write your PostgreSQL query statement below
SELECT q1.person_name
FROM queue q1
cross join
queue q2
where q2.turn <= q1.turn
group by q1.person_id, q1.person_name, q1.turn
having sum(q2.weight) <= 1000
order by q1.turn DESC
limit 1