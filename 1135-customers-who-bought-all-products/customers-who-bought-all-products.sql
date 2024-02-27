-- Write your PostgreSQL query statement below
SELECT DISTINCT customer_id
FROM Customer c inner join product p
using(product_key)
group by customer_id
having count(DISTINCT product_key) = (SELECT count(product_key) from product)