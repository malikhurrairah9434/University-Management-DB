CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE,
    course_name VARCHAR(100),
    credit_hours INT,
    department_id INT,
    professor_id INT
);
