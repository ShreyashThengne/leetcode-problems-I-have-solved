-- Write your PostgreSQL query statement below
Select max(numbers) as num from(
    SELECT CASE when count(num) > 1 then null else num end as numbers
    FROM MyNumbers
    GROUP BY num
    order by num DESC
)