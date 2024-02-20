-- Write your PostgreSQL query statement below
SELECT p.product_name, s.year, s.price
FROM Product as p inner join Sales as s
using(product_id);