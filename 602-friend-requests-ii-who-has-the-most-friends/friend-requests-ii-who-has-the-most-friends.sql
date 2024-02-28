-- Write your PostgreSQL query statement below
-- SELECT requester_id as id, count as num
-- FROM (
--     SELECT requester_id, count FROM (
--         SELECT requester_id, count(accepter_id) + (
--             SELECT count(*) from RequestAccepted r2 
--             where r2.accepter_id = r1.requester_id
--             )
--             as count
--         FROM RequestAccepted r1
--         group by requester_id
--     )
--     order by count DESC
--     limit 1
-- )
SELECT id, count(id) as num
-- SELECT *
FROM (
    (SELECT requester_id as id FROM RequestAccepted)
    UNION ALL
    (SELECT accepter_id as id FROM RequestAccepted)
)
group by id
order by count(id) DESC
limit 1