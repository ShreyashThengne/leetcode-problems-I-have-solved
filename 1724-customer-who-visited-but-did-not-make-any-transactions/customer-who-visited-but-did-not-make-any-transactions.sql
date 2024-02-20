-- Write your PostgreSQL query statement below
SELECT Visits.customer_id, count(*) as count_no_trans
FROM Visits left join Transactions using(visit_id)
where transaction_id is null
group by customer_id;