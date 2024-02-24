-- Write your PostgreSQL query statement below
select s.user_id, round(avg(Case
when c.action = 'confirmed' then 1
else 0
end), 2)
as confirmation_rate
from Signups as s left join Confirmations as c
using(user_id)
group by user_id