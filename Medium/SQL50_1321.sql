/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1321. Restaurant Growth

Difficulty:
Medium

Concepts: Window functions, cumulative sums

Approach: Use a window function to calculate the cumulative sum of daily amounts, and then select the rows where the cumulative sum is at least 7 days.

------------------------------------------------------------
*/
SELECT 
    visited_on,
    amount,
    average_amount
FROM (
    SELECT 
        visited_on,
        SUM(amount) OVER(
            ORDER BY visited_on 
            RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
        ) AS amount,
        ROUND(
            SUM(amount) OVER(
                ORDER BY visited_on 
                RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
            ) / 7.0, 2
        ) AS average_amount,
        DENSE_RANK() OVER(ORDER BY visited_on) AS date_rank
    FROM Customer
) AS aggregated_window
WHERE date_rank >= 7
GROUP BY visited_on, amount, average_amount
ORDER BY visited_on ASC;