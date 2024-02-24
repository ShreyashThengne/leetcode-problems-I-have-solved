-- Write your PostgreSQL query statement below
SELECT r.contest_id,
round(count(*) * 100.0/(
    SELECT count(users.user_id)
    from users
), 2) as percentage
FROM register as r
group by r.contest_id
order by percentage DESC, contest_id;