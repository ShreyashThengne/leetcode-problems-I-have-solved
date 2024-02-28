-- Write your PostgreSQL query statement below
SELECT id, count(id) as num
FROM (
    (SELECT requester_id as id FROM RequestAccepted)
    UNION ALL
    (SELECT accepter_id as id FROM RequestAccepted)
)
group by id
order by count(id) DESC
limit 1