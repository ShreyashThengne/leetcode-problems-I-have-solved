# Write your MySQL query statement below
SELECT name, area, population FROM World
where area >= 3000000
or population >= 25000000
order by area