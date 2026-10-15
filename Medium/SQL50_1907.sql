/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1907 - Count Salary Categories
Medium

Concepts:
Case statements, conditional aggregation
Approach:
Use case statements to categorize the income values into 'Low Salary', 'Average Salary', and 'High Salary' categories, and then count the number of accounts in each category.
------------------------------------------------------------
*/

SELECT 
    'Low Salary' AS category, 
    COUNT(account_id) AS accounts_count 
FROM Accounts 
WHERE income < 20000

UNION

SELECT 
    'Average Salary' AS category, 
    COUNT(account_id) AS accounts_count 
FROM Accounts 
WHERE income BETWEEN 20000 AND 50000

UNION

SELECT 
    'High Salary' AS category, 
    COUNT(account_id) AS accounts_count 
FROM Accounts 
WHERE income > 50000;
