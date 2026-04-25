DROP DATABASE IF EXISTS student_db;
CREATE DATABASE student_db;
USE student_db;


-- STUDENTS TABLE
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(40),
    age INT,
    city VARCHAR(40),
    dept_id INT
);

--  DEPARTMENTS TABLE
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(40),
    location VARCHAR(40)
);

--  COURSES TABLE

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(40),
    dept_id INT
);

--  FEES TABLE

CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount INT,
    status VARCHAR(20)
);

                            --  INSERT DATA-- 

-- Departments
INSERT INTO departments VALUES
(1, 'Urdu', 'Block 1A'),
(2, 'English', 'Block 2A'),
(3, 'Math', 'Block 3C');

-- Students
INSERT INTO students VALUES
(1, 'ALI', 20, 'Lahore', 1),
(2, 'AYESHA', 21, 'Karachi', 2),
(3, 'AHMED', 22, 'chunian', 3),
(4, 'ALINA', 20, 'islamabad', 1);

-- Courses
INSERT INTO courses VALUES
(101, 'urdu', 1),
(102, 'english', 2),
(103, 'physics', 3);

-- Fees
INSERT INTO fees VALUES
(1, 1, 50000, 'Paid'),
(2, 2, 70000, 'Pending'),
(3, 3, 80000, 'Paid'),
(4, 4, 90000, 'Paid');

SHOW TABLES;

-- SHOW FULL DATA (IMPORTANT - EVERYTHING VISIBLE)
SELECT * FROM students;
SELECT * FROM departments;
SELECT * FROM courses;
SELECT * FROM fees;

-- Students + Fees 
SELECT *
FROM students s
JOIN fees f ON s.student_id = f.student_id;

-- Students + Departments
SELECT *
FROM students s
JOIN departments d ON s.dept_id = d.dept_id;
SELECT s.name, d.dept_name
FROM students s
JOIN departments d ON s.dept_id = d.dept_id;
SELECT s.name, f.amount, f.status
FROM students s
JOIN fees f ON s.student_id = f.student_id;