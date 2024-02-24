-- Write your PostgreSQL query statement below
SELECT p.product_id, coalesce(round(sum(price*units)::numeric/sum(units)::numeric, 2),0) as average_price
FROM Prices as p left join UnitsSold as us
ON p.product_id = us.product_id and (us.purchase_date between p.start_date and p.end_date)
group by p.product_id