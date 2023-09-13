-- WITH GOD'S HELP
-- ASAF AI PERETS

-----------TARGIL B------------

-- -----------1------------
-- CREATE TABLE University.Enrollments (
-- 	enrollment_id SERIAL PRIMARY KEY,
-- 	student_id INT,
-- 	FOREIGN KEY (student_id) REFERENCES university.students(student_id),
-- 	course_id INT,
-- 	FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
-- )

-- INSERT INTO university.enrollments (student_id,course_id)
-- VALUES (1,1),(2,1),(3,2),(4,3),(1,3)

-- -----------2------------
-- CREATE TABLE University.TeacherCourse (
--     teachercourse_id SERIAL PRIMARY KEY,
--     teacher_id INT,
--     FOREIGN KEY (teacher_id) REFERENCES university.teachers (teacher_id),
--     course_id INT,
--     FOREIGN KEY (course_id) REFERENCES university.courses (course_id)
-- )

-- INSERT INTO university.teachercourse (teacher_id,course_id)
-- VALUES (1,1),(2,2),(3,3)

-- -----------3------------
-- CREATE TABLE University.Grades (
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id) REFERENCES university.students (student_id),
--     course_id INT,
--     FOREIGN KEY (course_id) REFERENCES university.courses (course_id)
-- )

-- INSERT INTO Grades (grade, student_id,course_id)
-- VALUES (95,1,1),(87,2,1),(88,3,2),(93,4,3),(78,1,3)