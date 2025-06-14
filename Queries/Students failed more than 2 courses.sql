SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    COUNT(*) AS fail_count
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
WHERE g.grade = 'F'
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(*) > 2;
