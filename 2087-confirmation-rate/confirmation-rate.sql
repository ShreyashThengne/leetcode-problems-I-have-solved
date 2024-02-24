-- Write your PostgreSQL query statement below
select s.user_id, round(COALESCE(avg((c.action = 'confirmed')::int), 0), 2) as confirmation_rate
from Signups as s left join Confirmations as c
using(user_id)
group by user_id