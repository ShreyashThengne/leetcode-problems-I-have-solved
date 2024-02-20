-- Write your PostgreSQL query statement below
SELECT v.customer_id, count(*) as count_no_trans
FROM Visits as v left join Transactions as t using(visit_id)
where transaction_id is null
group by customer_id;