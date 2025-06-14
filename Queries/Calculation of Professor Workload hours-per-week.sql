SELECT 
    student_id,
    first_name,
    last_name,
    ROUND(AVG(CASE grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
        WHEN 'D' THEN 1
        ELSE 0
    END), 2) AS gpa,
    RANK() OVER (ORDER BY AVG(CASE grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
        WHEN 'D' THEN 1
        ELSE 0
    END) DESC) AS rank
FROM students
JOIN enrollments USING (student_id)
JOIN grades USING (enrollment_id)
GROUP BY student_id, first_name, last_name;
