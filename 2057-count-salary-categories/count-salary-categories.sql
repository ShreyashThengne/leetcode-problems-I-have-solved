-- Write your PostgreSQL query statement below
SELECT 'Low Salary' as category,
SUM(CASE WHEN income < 20000 then 1 else 0 end) as accounts_count
FROM Accounts
UNION
SELECT 'Average Salary' as category,
SUM(CASE WHEN income between 20000 and 50000 then 1 else 0 end) as accounts_count
FROM Accounts
UNION
SELECT 'High Salary' as category,
SUM(CASE WHEN income > 50000 then 1 else 0 end) as accounts_count
FROM Accounts
ORDER BY accounts_count