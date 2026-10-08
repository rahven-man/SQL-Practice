/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1729 - Followers Count

Difficulty:
Easy

Concepts:
- GROUP BY
- COUNT

Approach:
Group the Followers table by user_id and count the distinct follower_id for each user.
------------------------------------------------------------
*/
select user_id , count(distinct follower_id) as followers_count
from Followers
group by user_id;

