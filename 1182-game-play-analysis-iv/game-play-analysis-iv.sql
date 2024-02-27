-- Write your PostgreSQL query statement below
With t1 as(
    SELECT player_id, event_date, rank() over(
        partition by player_id order by event_date
    ) as rank
    from activity
)
SELECT round(
    count(distinct a1.player_id)::numeric/(
    select count(distinct activity.player_id)
    from activity)
, 2) as fraction
FROM t1 a1, t1 a2
where a1.player_id = a2.player_id
and Extract(day from (a1.event_date::timestamp - a2.event_date::timestamp)) = 1
and 1 in (a1.rank, a2.rank)