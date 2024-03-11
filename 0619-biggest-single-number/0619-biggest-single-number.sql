# Write your MySQL query statement below
SELECT
    CASE 
        WHEN COUNT(*) = 1 THEN num
        ELSE NULL
        END as num
FROM MyNumbers
GROUP BY num
ORDER BY num DESC
LIMIT 1;