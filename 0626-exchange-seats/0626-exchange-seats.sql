# Write your MySQL query statement below
# WITH cte AS (
#     SELECT *, COUNT(*) OVER () AS total
#     FROM Seat
# )
# SELECT CASE
#             WHEN MOD(id, 2) = 1 AND id != total THEN id + 1
#             WHEN MOD(id, 2) = 1 AND id = total THEN id
#             ELSE id - 1
#         END as id
#         , student
# FROM cte
# ORDER BY id;

# 서브쿼리만 사용
SELECT CASE
            WHEN MOD(id, 2) = 1 AND id != total THEN id + 1
            WHEN MOD(id, 2) = 1 AND id = total THEN id
            ELSE id - 1
        END as id
        , student
FROM (SELECT *, 
    (SELECT COUNT(*) FROM Seat) AS total
    FROM Seat) as Seat
ORDER BY id