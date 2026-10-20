/*
------------------------------------------------------------
Problem:
LeetCode SQL50  585. Investments in 2016

Difficulty:
Medium

Concepts:
Union all, aggregation
Approach:
Filter the Insurance table to include only rows where the tiv_2015 value appears more than once, and the (lat, lon) combination appears exactly once. Then, sum the tiv_2016 values.
------------------------------------------------------------
*/
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE 
    tiv_2015 IN (
        SELECT tiv_2015 
        FROM Insurance 
        GROUP BY tiv_2015 
        HAVING COUNT(*) > 1
    )
    AND 
    (lat, lon) IN (
        SELECT lat, lon 
        FROM Insurance 
        GROUP BY lat, lon 
        HAVING COUNT(*) = 1
    );
