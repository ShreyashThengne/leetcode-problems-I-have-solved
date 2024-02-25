-- Write your PostgreSQL query statement below
select query_name,
round(avg(rating::numeric/position), 2) as quality,
round(sum(
    CASE when rating < 3 then 1
    else 0 end
    )
    ::numeric * 100/count(*), 2)
    as poor_query_percentage
from queries
group by query_name
having query_name is not null