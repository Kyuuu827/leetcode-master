# Write your MySQL query statement below


SELECT ROUND(SUM(i.tiv_2016), 2) AS tiv_2016
FROM Insurance i
WHERE i.tiv_2015 IN (SELECT tiv_2015 FROM(
    SELECT i2.tiv_2015, count(*) as tot
    FROM insurance i2
    GROUP BY tiv_2015
    HAVING tot >= 2
    ) as cte_2015) AND (i.lat, i.lon) IN (SELECT cte_reg.lat, cte_reg.lon FROM (
    SELECT i3.lat, i3.lon, count(*) as reg
    FROM insurance i3
    GROUP BY lat, lon
    HAVING reg = 1
    ) AS cte_reg);
