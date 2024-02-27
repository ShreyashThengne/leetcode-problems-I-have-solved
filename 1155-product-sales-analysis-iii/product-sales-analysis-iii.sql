-- Write your PostgreSQL query statement below
SELECT product_id, year as first_year, quantity, price
FROM (
    SELECT *, rank() over(
        partition by product_id order by year
    ) as rnk
    FROM Sales
)
where rnk = 1