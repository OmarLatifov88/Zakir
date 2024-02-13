create table employee(

id int primary key identity,
Fullname varchar(255) not null,
Age int check( Age >= 0 ) not null,
Email varchar(100) Unique not null,
Salary int check(Salary >= 300 and Salary <= 2000) not null
);
INSERT INTO employee
VALUES('Zakirov', 20, 'Zakir@mail.ru', 1900)
INSERT INTO employee
VALUES('Memmedov', 20, 'MEmmed@mail.ru', 1700)
INSERT INTO employee
VALUES('Kemaleddinov', 20, 'Kemaleddin`@mail.ru', 1500)
INSERT INTO employee
VALUES('zakirov', 20, 'zakir@mail.ru', 1950);
INSERT INTO employee
VALUES('Malikov', 20, 'MemmedA@mail.ru', 490);
UPDATE employee
SET Salary = 1990
WHERE employee.id = 1 AND Salary >= 1700 AND Salary <= 1950;
SELECT Fullname, Age, Email, Salary
FROM employee
WHERE employee.Salary BETWEEN 500 AND 1500
AND employee.id IN(1, 5);
SELECT Fullname, Email, Salary
FROM employee
SELECT * FROM employee
ORDER BY Salary DESC;

create table students
(
id int primary key identity,
[Name] varchar(50) not null,
Surname varchar(55),
);
CREATE TABLE subjects
(
id int primary key identity,
[Name] varchar(50) not null,

);
CREATE TABLE exams
(
subjectId int foreign key references subjects(id)
);