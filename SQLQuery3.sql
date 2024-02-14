USE Zakir
create table SSStudents
(
Id int primary key identity not null,
[Name] varchar(50) not null,
Surname varchar(55)
);
INSERT INTO SSStudents(Name, Surname)
VALUES
('Zakir', 'Memmedov'),
('Kamil', 'Malikov');
CREATE TABLE SSSubjects
(
Id int primary key identity not null,
[Name] varchar(50) not null

);
INSERT INTO SSSUBJECTS(Name)
VALUES
('Cografiya'),
('Tarix');

CREATE TABLE EExams
(
Id int primary key identity not null,
date_column DATE,
sssubjectsid int foreign key references SSSubjects(Id)
);
INSERT INTO EExams(date_column)
VALUES
('30-01-2018'),
('30-09-2018');
--INSERT INTO Exams1 (id, date_column) VALUES (1, '2024-02-14');
CREATE TABLE SSStudentexams
(
Id int primary key identity not null,
EExamsId int foreign key references EExams(Id),
SSStudentsId int foreign key references SSStudents(Id)
);
ALTER TABLE SSStudentexams
ADD EExamResult int;
SELECT 
    SSStudents.Name AS SSStudentName,
    COALESCE(SSStudents.Surname, 'XXXXXX') AS SSStudentSurname,
    SSSubjects.Name AS SSSubjectName,
    EExams.date_column AS EExamDate,
    SSStudentexams.EExamResult AS EExamResult
FROM 
    SSStudents
JOIN 
    SSStudentexams ON SSStudents.Id = SSStudentexams.SSStudentsId
JOIN 
    EExams ON SSStudentexams.EExamsId = EExams.Id
JOIN 
    SSSubjects ON EExams.sssubjectsId = SSSubjects.Id;
