-- Step 1: Create a new database for intern tracking
CREATE DATABASE InternTrackingDB;

-- Step 2: Use the database
USE InternTrackingDB;

-- Step 3: Create a table to store intern details
CREATE TABLE Interns (
    InternID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    JoinDate DATE,
    Department VARCHAR(50),
    Status VARCHAR(20) DEFAULT 'Active'
);

-- Step 4: Create a table to assign tasks to interns
CREATE TABLE InternTasks (
    TaskID INT PRIMARY KEY AUTO_INCREMENT,
    InternID INT,
    TaskDescription TEXT,
    AssignedDate DATE,
    Deadline DATE,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (InternID) REFERENCES Interns(InternID)
);