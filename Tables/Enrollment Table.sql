CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    enrollment_id INT,
    grade CHAR(2),
    remarks TEXT
);
