# Write your MySQL query statement below
WITH cte_re AS (
    SELECT requester_id id
    , COUNT(accepter_id) num
    FROM requestaccepted
    GROUP BY requester_id
)
, cte_ac AS(
  SELECT accepter_id id
    , COUNT(requester_id) num
  FROM requestaccepted
  GROUP BY accepter_id
)
, cte_union AS(
  SELECT *
  FROM cte_re

  UNION ALL

  SELECT *
  FROM cte_ac
)

SELECT id, SUM(num) num
FROM cte_union
GROUP BY id
ORDER BY num DESC
LIMIT 1;