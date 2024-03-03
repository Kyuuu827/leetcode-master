# Write your MySQL query statement below
SELECT a1.player_id, (SELECT a2.event_date FROM Activity a2 WHERE a2.player_id = a1.player_id ORDER BY event_date limit 1) as first_login 
FROM Activity a1
GROUP BY player_id;