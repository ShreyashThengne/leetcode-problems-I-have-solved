-- Write your PostgreSQL query statement below
with t1 as (
    SELECT delivery_id, customer_id,
    rank() over(
        partition by customer_id order by order_date
    ) as rank
    from delivery
)
select round(
    sum(
    CASE when
    extract(day from order_date::timestamp - customer_pref_delivery_date::timestamp) = 0
    then 1
    else 0
    end
    )::numeric * 100/count(*)
, 2)
as immediate_percentage
from delivery left join t1
using(delivery_id, customer_id)
where rank = 1