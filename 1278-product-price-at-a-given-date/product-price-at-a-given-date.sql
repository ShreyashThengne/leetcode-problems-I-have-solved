-- Write your PostgreSQL query statement below
SELECT product_id, max(
    CASE WHEN change_date > '2019-08-16' then 10 else new_price end
) as price
FROM Products t2
left join (
    SELECT product_id, change_date, rank() over(
        partition by product_id order by change_date DESC
    ) as rnk
    FROM Products
    where change_date <= '2019-08-16'
) t1
using(product_id, change_date)
where rnk=1 or rnk is null
group by product_id