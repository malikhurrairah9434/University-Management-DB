SELECT 
    p.professor_id,
    p.first_name || ' ' || p.last_name AS professor_name,
    COUNT(DISTINCT s.course_id) AS courses_taught,
    s.day_of_week
FROM professors p
JOIN courses c ON p.professor_id = c.professor_id
JOIN schedules s ON c.course_id = s.course_id
GROUP BY p.professor_id, professor_name, s.day_of_week
HAVING COUNT(DISTINCT s.course_id) > 1
ORDER BY professor_name;
