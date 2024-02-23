-- Write your PostgreSQL query statement below
select name
from Employee
where id in (SELECT managerId
from Employee
group by managerId
having count(*) >= 5)