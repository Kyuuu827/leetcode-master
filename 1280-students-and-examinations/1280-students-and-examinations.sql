# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sb.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
JOIN Subjects sb
LEFT JOIN Examinations e ON e.student_id = s.student_id AND e.subject_name = sb.subject_name
GROUP BY s.student_id, sb.subject_name
ORDER BY s.student_id, sb.subject_name;