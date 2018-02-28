create_bingo.sql

CREATE TABLE courses (
  course CHAR(4),
  title  VARCHAR(63),
  category VARCHAR(75),
  course_id INT PRIMARY KEY,
  units INT,
  weekday VARCHAR,
  course_time VARCHAR,
  room  VARCHAR(15),
  instructor_first VARCHAR(50),
  instructor_last VARCHAR(50)

);

CREATE TABLE students (
  sid CHAR(6) PRIMARY KEY,
  first VARCHAR(50),
  last VARCHAR(50),
  cohort INT
);

CREATE TABLE registration (


);
