CREATE DATABASE Department
USE Department

CREATE TABLE Employee (
    Id INT PRIMARY KEY IDENTITY (1,1),
    Fullname VARCHAR(255) ,
    Age INT CHECK (Age > 0),
    Email VARCHAR(255) UNIQUE,
    Salary DECIMAL(10,2)  CHECK (Salary >= 300 AND Salary <= 2000),
    DepartmentId INT,
);

INSERT INTO Employee (Fullname, Age, Email, Salary, DepartmentId) 
VALUES ('Suleymanli Fidan', 25, 'suleymanlifidan07@gmail.com', 1300, 1),
       ('Abbaszade Nurlan', 28, 'nurlanabbaszadeh@gmail.com', 1500, 1),
       ('Bayramli Sevda', 38, 'sevdabayramli@gmail.com', 1100, 2),
       ('Suleymanzadeh Togrul', 29, 'suleymanzadehtogrul@gmail.com',1000,2);

SELECT * FROM Employee;

UPDATE Employee
SET Salary = 1200
WHERE Id = 1;

SELECT * FROM Employee
WHERE Salary BETWEEN 700 AND 1100;

SELECT Fullname, Email, Salary FROM Employee
ORDER BY Salary DESC;



