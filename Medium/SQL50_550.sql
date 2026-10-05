/*
------------------------------------------------------------
Problem:
LeetCode SQL50 550 - Game Play Analysis 4

Difficulty:
Medium

Concepts:
LEFT JOIN
GROUP BY
AVG
ROUND
IFNULL

Approach:
Use a LEFT JOIN to combine the Activity table with itself, grouping by player_id and calculating the average of the difference between event dates.
------------------------------------------------------------
*/

select round(count(distinct player_id)/(select count(distinct player_id) from Activity),2) as fraction
from Activity
where (player_id,date_sub(event_date,interval 1 day)) in (
    select player_id,min(event_date)
    from Activity
    group by player_id
);