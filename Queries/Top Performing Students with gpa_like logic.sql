SELECT 
    c.course_id,
    c.course_name,
    COUNT(e.enrollment_id) AS total_enrollments
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_enrollments DESC
LIMIT 5;
