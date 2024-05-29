# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) as balance
FROM Users u
JOIN Transactions t ON t.account = u.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000;