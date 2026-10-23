CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR (60),
marks INT,
city VARCHAR(50)
);

INSERT INTO students VALUES
(1,'Gagan',70,'Mumbai'),
(2,'Dhanraj',89,'Sangli'),
(3,'Shreya',85,'Kerala'),
(4,'Laxmi',45,'Belgaum'),
(5,'Harshika',99,'Mysore');

SELECT MAX(marks) from students;

SELECT name,city from students
where city in (
SELECT city from students where marks>80
);

SELECT 
	name, marks,
	(select COUNT(*) from students) AS total_students
from students;

SELECT avg_marks
from(
	SELECT AVG(marks) AS avg_marks 
    from students 
) AS temp;

SELECT name , marks from students 
where marks > (SELECT AVG (marks) from students);