SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    COUNT(g.grade) AS courses_taken,
    ROUND(AVG(CASE g.grade 
        WHEN 'A' THEN 4 
        WHEN 'B' THEN 3 
        WHEN 'C' THEN 2 
        WHEN 'D' THEN 1 
        WHEN 'F' THEN 0 
    END), 2) AS gpa_like
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY gpa_like DESC
LIMIT 10;
