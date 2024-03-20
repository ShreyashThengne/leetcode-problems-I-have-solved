-- Write your PostgreSQL query statement below
-- Write your PostgreSQL query statement below
(SELECT name as results
FROM Users inner join movierating using(user_id)
group by 1
order by count(user_id) DESC, name
limit 1)
union ALL
(SELECT title as results
FROM movies inner join movierating using(movie_id)
where Extract(year from created_at) = 2020
and Extract(month from created_at) = 2
group by 1
order by avg(rating) DESC, title
limit 1)