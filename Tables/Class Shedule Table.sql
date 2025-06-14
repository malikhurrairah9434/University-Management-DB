-- Students → Departments
ALTER TABLE students ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);

-- Professors → Departments
ALTER TABLE professors ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);

-- Courses → Departments & Professors
ALTER TABLE courses ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE courses ADD FOREIGN KEY (professor_id) REFERENCES professors(professor_id);

-- Enrollments → Students & Courses
ALTER TABLE enrollments ADD FOREIGN KEY (student_id) REFERENCES students(student_id);
ALTER TABLE enrollments ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- Grades → Enrollments
ALTER TABLE grades ADD FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id);

-- Schedules → Courses
ALTER TABLE schedules ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);
