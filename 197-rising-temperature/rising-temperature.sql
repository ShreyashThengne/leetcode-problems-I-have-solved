-- Write your PostgreSQL query statement below
-- SELECT w1.id from Weather w1, Weather w2
-- where DATEDIFF(w1.recordDate, w2.recordDate) = 1
-- and w1.temperature > w2.temperature;
SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.recordDate - w2.recordDate = 1 AND w1.temperature > w2.temperature;