-- Write your PostgreSQL query statement below
SELECT distinct num as ConsecutiveNums
FROM (
    SELECT *,
    lead(num) over(
        order by id
    ) as nxt,
    lag(num) over(
        order by id
    ) as prev
    FROM logs
)
WHERE num = nxt and num = prev