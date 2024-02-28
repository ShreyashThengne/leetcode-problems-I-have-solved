-- Write your PostgreSQL query statement below
SELECT round(sum(tiv_2016)::numeric, 2) as tiv_2016
FROM insurance
where tiv_2015 in (
    SELECT tiv_2015 from insurance
    group by tiv_2015
    having count(tiv_2015) > 1
    order by count(tiv_2015) DESC
)
and
(lat, lon) not in (
    SELECT lat, lon from insurance
    group by lat, lon
    having count(*) > 1
    order by count(*) DESC
)