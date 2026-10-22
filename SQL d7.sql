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

SELECT * FROM students;

SELECT id,name,marks FROM students;

SELECT * FROM students
WHERE marks > 70;

SELECT * FROM students
WHERE marks>70 AND city='Mumbai';

SELECT * FROM students
where marks <= 80 OR city='Mumbai';

SELECT * FROM students
where NOT city= 'Mumbai';

SELECT * FROM students
ORDER BY marks ASC;

SELECT * FROM students
ORDER BY marks DESC;
