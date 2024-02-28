-- Write your PostgreSQL query statement below
SELECT CASE
WHEN id%2 = 1 and id = (SELECT max(id) from seat) then id
WHEN id%2 = 1 then id+1
WHEN id%2 = 0 then id - 1
end
as id,
student
FROM Seat
order by id