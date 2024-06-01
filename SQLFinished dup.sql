-- SQL Query Exploration in Employee Database

CREATE DATABASE Employee_db;

USE Employee_db;
CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
    );
    
CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments
VALUES 	(1, "hr"),
		(2, "sales"),
        (3, "customer service"),
        (4, "warehouse"),
        (5, "it"),
        (6, "security");

SELECT * from Departments

INSERT INTO Employees
VALUES 	(104, "Mild Lights", 25, 4),
		(105, "Ginger Ale", 52, 1),
        (106, "Lemon Ade", 27, 5),
        (107, "Climber Bill", 43, 6),
        (108, "Leamer Run", 34, 3),
        (109, "Gotch Ah", 19, 2);

SELECT * from Employees

UPDATE Employees
SET department_id = 4
WHERE employee_id = 109; 

UPDATE Employees
SET department_id = 4
WHERE employee_id = 108; 

UPDATE Employees
SET department_id = 4
WHERE employee_id = 107; 

SELECT DISTINCT department_id FROM Employees

SELECT COUNT(employee_id) AS TOTAL  
FROM Employees
GROUP BY department_id

SELECT employee_id, name, age, department_id
FROM Employees
WHERE age BETWEEN 25 AND 30

