SELECT 
    DISTINCT s.student_id,
    s.first_name,
    s.last_name,
    c.course_name,
    p.first_name || ' ' || p.last_name AS professor
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN professors p ON c.professor_id = p.professor_id
WHERE p.first_name = 'Ali' AND p.last_name = 'Khan';
