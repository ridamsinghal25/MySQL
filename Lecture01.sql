-- Command to show all the databases
SHOW DATABASES;

-- Command to create a database
CREATE DATABASE IF NOT EXISTS techwithridam;

-- Command to use the database
USE techwithridam;

-- Command to show the current database
SELECT database();


-- Create Table
CREATE TABLE employee(
	EID INT AUTO_INCREMENT,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location varchar(50) NOT NULL,
    PRIMARY KEY(EID)
);

DESC employee;

-- Command to drop the table
DROP TABLE employee;

-- Command to show all the tables
SHOW TABLES;

-- Insert data in table 
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Priya", "Bhatia", 27, 200000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Akhil", "George", 26, 100000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Kaneesha", "Brownlee", 27, 200000, "UK");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Megha", "Meka", 24, 50000, "London");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Naga", "Sai", 30, 150000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Prabhutva", "kakkar", 35, 70000, "Noida");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Yashswi", "Gandhak", 29, 90000, "Delhi");

-- Data Retrieval from the database
SELECT * FROM employee WHERE Salary > 100000;
SELECT FirstName, LastName FROM employee WHERE Salary > 100000;
SELECT EID, FirstName, Salary FROM employee WHERE Age > 25;

-- Difference between Update and Alter command
-- Update is used to update the report inside the table (DML) Data Manipulation Language
-- Alter is used to update the schema of a table (DDL) Data Definition Language

-- Update command

UPDATE employee SET LastName = "Bhatt" WHERE EID = 1;
SELECT * FROM employee;

-- Delete the record of EID = 4
DELETE FROM employee WHERE EID = 4;

-- Delete vs Drop
-- Delete is used to delete the data from the table (DML command)
-- Drop is used to drop the table (DDL command)

-- DML vs DDL
-- DML is used to modify the data inside the table
-- DDL is used to modify the structure of the table