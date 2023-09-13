-- WITH GOD'S HELP
-- ASAF AI PERETS

-- Active: 1694601526971@@127.0.0.1@5432@University@university

-------------TARGIL A--------------

CREATE SCHEMA UNIVERSITY

-----------1--------------
CREATE TABLE university.students (
student_id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	date_of_birth DATE,
	email TEXT UNIQUE
)

INSERT INTO university.students (first_name,last_name,date_of_birth,email)
 VALUES ('John','Doe','1990-01-15','john.doe@example.com'),
 ('Jane','Smith','1992-05-20','jane.smith@example.com
'),
 ('Michael','Johnson','1991-09-10','michael.johnson@example.com
'),
 ('Emily','Davis','1993-03-25','emily.davis@example.com
')

-----------2--------------
CREATE TABLE university.teachers (
teacher_id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	date_of_birth DATE,
	email TEXT UNIQUE,
department TEXT,
hire_date DATE
)

INSERT INTO university.teachers
(first_name,last_name,date_of_birth,email,department,hire_date)
VALUES 
('Professor','Anderson','1975-04-08','prof.anderson@example.com','Computer Science','2010-08-15'),
('Dr. Sarah','Wilson','1980-12-20','sarah.wilson@example.com','Mathematics','2015-05-02'),
('Mr. James','Brown','1978-06-14','james.brown@example.com','History','2009-11-11')

-----------3------------
CREATE TABLE university.courses (
	course_id SERIAL PRIMARY KEY,
	course_name TEXT NOT NULL,
	department TEXT,
	credits NUMERIC
)

INSERT INTO university.courses (course_name,department,credits)
VALUES 
('Introduction to Programming','Computer Science',3),
('Calculus I','Mathematics',4),
('World History','History',3)


-----------TARGIL B------------

-----------1------------
CREATE TABLE University.Enrollments (
	enrollment_id SERIAL PRIMARY KEY,
	student_id INT,
	FOREIGN KEY (student_id) REFERENCES university.students(student_id),
	course_id INT,
	FOREIGN KEY (course_id) REFERENCES university.courses(course_id)
)

ALTER TABLE University.Enrollments
ADD CONSTRAINT enrollments_CONSTRAINT UNIQUE(student_id,course_id)




INSERT INTO university.enrollments (student_id,course_id)
VALUES (1,1),(2,1),(3,2),(4,3),(1,3)

INSERT INTO university.enrollments (student_id,course_id)
VALUES (1,2)

-----------2------------
CREATE TABLE University.TeacherCourse (
    teachercourse_id SERIAL PRIMARY KEY,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES university.teachers (teacher_id),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES university.courses (course_id)
)


INSERT INTO university.teachercourse (teacher_id,course_id)
VALUES (1,1),(2,2),(3,3)

CREATE TABLE University.Grades (
    grade_id SERIAL PRIMARY KEY,
    grade INT,
    enrollment_id INT,
    FOREIGN KEY (enrollment_id) REFERENCES university.enrollments(enrollment_id)
)


INSERT INTO Grades (grade,enrollment_id)
VALUES (95,1),(87,2),(88,3),(93,8),(78,5)

INSERT INTO Grades (grade,enrollment_id)
VALUES (95,8)

-----------TARGIL C------------

-----------1------------

CREATE TABLE StudyGroup (
    studygroup_id SERIAL PRIMARY KEY,
    studygroup_name TEXT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES University.students (student_id)
)


INSERT INTO university.studygroup (studygroup_name,student_id)
VALUES ('The Kings',4),('The Kings',1),('The Lords',2),('The Winners',3)

-----------2------------

SELECT * FROM teachers;
SELECT * FROM enrollments;
SELECT * FROM grades;
SELECT * FROM students;
SELECT * FROM studygroup;
SELECT * FROM teachercourse;
SELECT * FROM teachers

-----------3------------
-- I updated my work!

