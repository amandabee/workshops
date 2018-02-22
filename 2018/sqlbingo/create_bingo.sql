create_bingo.sql

CREATE TABLE courses (
  course CHAR(4),
  title  VARCHAR(63),
  category VARCHAR,
  course_id INT PRIMARY KEY,
  units INT,
  weekday VARCHAR,
  course_time VARCHAR,
  room  VARCHAR(15),
  instructor_first VARCHAR(15),
  instructor_last VARCHAR(15)

);

CREATE TABLE students (


);

CREATE TABLE registration (


);
