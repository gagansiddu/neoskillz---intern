-- 1. Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(60),
    marks INT,
    city VARCHAR(50)
);

-- 2. Insert student records
INSERT INTO students VALUES
(1, 'Atharv', 70, 'Mumbai'),
(2, 'Dhanraj', 89, 'Sangli'),
(3, 'Shreya', 85, 'Palakkad'),
(4, 'Laxmi', 45, 'Pune'),
(5, 'Harshika', 99, 'Mysuru');

-- 3. Create the city_info table
CREATE TABLE city_info (
    city VARCHAR(50),
    state VARCHAR(60),
    pincode INT
);

-- 4. Insert city records
INSERT INTO city_info VALUES
('Mumbai', 'maharashtra', 400067),
('Sangli', 'maharashtra', 400068),
('Palakkad', 'Kerala', 678582),
('Pune', 'maharashtra', 400000),
('Mysuru', 'karnataka', 570002),
('Delhi', 'Delhi', 500000),
('Ahmedabad', 'Gujarat', 306780);

-- 5. Join both tables
select s.name ,s.city, s.marks, c.state
from students s 
JOIN city_info c ON s.city = c.city;

select s.name ,s.city, s.marks, c.pincode
from students s 
LEFT JOIN city_info c ON s.city = c.city;

select s.name ,s.city, s.marks, c.pincode
from students s 
RIGHT JOIN city_info c ON s.city = c.city;