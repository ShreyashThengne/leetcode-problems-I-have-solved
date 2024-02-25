-- Write your PostgreSQL query statement below
SELECT to_char(trans_date, 'yyyy-MM') as month,
country,
count(*) as trans_count,
sum(
    CASE when state = 'approved' then 1 else 0 end
    ) as approved_count,
sum(amount) as trans_total_amount,
sum(
    CASE when state = 'approved' then amount else 0 end
    ) as approved_total_amount
FROM transactions
group by month, country