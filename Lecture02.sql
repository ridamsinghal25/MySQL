-- Primary key 
-- Primary key is used to identify the unique record inside the table

-- Use the database
USE techwithridam;

-- Create Table of course
CREATE TABLE Course (
	CourseId INT AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseDuration INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseId)
);

-- Show all the tables
SHOW TABLES;

-- Describe the table structure
DESC Course;

-- Command to drop the table
DROP TABLE Learners;

-- Insert course details
INSERT INTO Course(CourseName, CourseDuration, CourseFee) VALUES("The Complete Excel Mastery Course", 3, 1499);
INSERT INTO Course(CourseName, CourseDuration, CourseFee) VALUES("DSA for interview Prep", 2, 4999);
INSERT INTO Course(CourseName, CourseDuration, CourseFee) VALUES("SQL Bootcamp", 1, 2999);

-- Select values from table
SELECT * FROM Course; 

-- Primary key vs Unique key ----------
-- Primary key important characteristics not null and unique
-- Unique key important characteristics can be null and unique

-- Foreign key
-- Foreign key is used to connect two tables

-- Create Table of Learner
CREATE TABLE Learners(
	LearnerId INT AUTO_INCREMENT,
    LearnerFirstName VARCHAR(50) NOT NULL,
    LearnerLastName VARCHAR(50) NOT NULL,
    LearnerEmailId VARCHAR(50), 
    LearnerPhoneNumber VARCHAR(50) NOT NULL,
    LearnerEnrollmentDate TIMESTAMP NOT NULL,
    SelectedCourses INT NOT NULL,
    YearsOfExperience INT NOT NULL,
    LearnerCompany VARCHAR(50),
    SourceOfJoining VARCHAR(50) NOT NULL,
    BatchStartDate TIMESTAMP NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY(LearnerId),
    UNIQUE KEY(LearnerEmailId),
    FOREIGN KEY(SelectedCourses) REFERENCES Course(CourseId)
);

DESC Learners;

-- Insert data in table of Learners
-- Batch start date 1 : 2024-02-29 
-- Batch start date 2 : 2024-01-16 
-- Batch start date 3 : 2024-03-25 
INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Akhil", "George", "akhil.george.8743@gmail.com", 8765438764, "2024-01-21", 1, 2, "Google", "LinkedIn", "2024-02-29", "Mumbai");

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Rishikesh", "Joshi", "carjkop@gmail.com", 8765438345, "2024-01-10", 2, 5, "Amazon", "YouTube", "2024-01-16", "Delhi");

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Madhuram", "Ravichandran", "ravichandran.madhuram@gmail.com", 9865438764, "2024-02-21", 3, 3, "Microsoft", "Twitter", "2024-03-25", "Hyderabad");

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Jeevan", "Hegde", "jeevanhegdek@yahoo.co.in", 9759293567, "2024-01-21", 1, 1, "Netflix", "LinkedIn", "2024-02-29", "Bengalure");

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Sidhish", "Kumar", "sidhishkumar@gmail.com", 8765437895, "2024-01-4", 2, 4, "Facebook", "LinkedIn", "2024-01-16", "Gurugram");

INSERT INTO Learners(LearnerFirstName, LearnerLastName, LearnerEmailId, LearnerPhoneNumber, LearnerEnrollmentDate, SelectedCourses, YearsOfExperience, LearnerCompany, SourceOfJoining, BatchStartDate, Location) 
VALUES ("Naga Sai", "Sreedhar", "saisreedhar2001@gmail.com", 9865438764, "2024-03-21", 3, 8, "Cisco", "Blog", "2024-03-25", "Hyderabad");

-- Select values from table of Learners
SELECT * FROM Learners;

-- ORDER BY  ----------------
-- If we want to sort data points we use "ORDER BY" by default it is in ascending order
-- We can use "DESC" to sort the data points in descending order

-- LIMIT ----------------
-- If we want to limit the data points we use "LIMIT"

-- Data Analysis [Employee, Course, Learners]
-- 1. Give me the records of the employees getting the highest salary

SELECT * FROM employee 
ORDER BY salary DESC LIMIT 1;

-- what is the execution of this command 
-- SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
-- 1. From        First select the table
-- 2. SELECT      Then select the columns
-- 3. ORDER BY    Then order the columns
-- 4. LIMIT       Then limit the data points

-- 2. Give me the records of the employees getting the highest salary and age is bigger than 30
SELECT * FROM employee WHERE age > 30 ORDER BY salary DESC LIMIT 1;

-- What is the execution of this command
-- SELECT * FROM employee WHERE age > 30 ORDER BY salary DESC LIMIT 1;
-- 1. From        First select the table
-- 2. WHERE        Then filter the data points
-- 3. SELECT      Then select the columns
-- 4. ORDER BY    Then order the columns
-- 5. LIMIT       Then limit the data points

-- 3. Display the number of enrollments in the website Notes Library
-- COUNT() keyword count the non null entries
SELECT COUNT(*) AS num_of_enrollments FROM Learners;

-- 4. Display the number of enrollments for the courseId = 3 "SQL Bootcamp"
SELECT COUNT(*) AS num_of_learners_for_sql FROM Learners WHERE SelectedCourses = 3;

-- 5. Count the number of learners enrolled in month of January

-- WILDCARDS or PATTERN MATCHING
-- % is used to match any character
-- _ is used to match single character
SELECT COUNT(*) FROM Learners WHERE LearnerEnrollmentDate LIKE "%-02-%";

-- 6. Update the Jeevan data with years of experience as 1 and learner company as Amazon
UPDATE Learners SET YearsOfExperience = 5, LearnerCompany = "Amazon" WHERE LearnerId = 4;

-- 7. Count the number of company learners belongs to
Select COUNT(DISTINCT LearnerCompany) AS distinct_companies from Learners; 