# Write your MySQL query statement below
WITH cte_login AS(
  SELECT player_id
        , DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 as login
  FROM Activity
)
SELECT ROUND(SUM(login) / COUNT(DISTINCT player_id), 2) as fraction
FROM cte_login;