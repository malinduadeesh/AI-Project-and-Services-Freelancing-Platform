-- Member 5 - AI Services and Administration
-- AI Projects and Services Freelancing Platform
-- DBMS: Microsoft SQL Server
-- Language: T-SQL

-- AI SKill Table

CREATE TABLE AI_Skill (
Skill_ID INT IDENTITY(1,1) PRIMARY KEY,
Skill VARCHAR(100) NOT NULL UNIQUE);

-- AI Service Table

CREATE TABLE AI_Service (
Service_ID INT IDENTITY(1,1) PRIMARY KEY,
Service VARCHAR(100) NOT NULL UNIQUE);

-- Complaint Table

CREATE TABLE Complaint (
Complaint_ID INT IDENTITY(1,1) PRIMARY KEY,
User_ID INT NOT NULL,
Admin_ID INT NULL,
Complaint VARCHAR(MAX) NOT NULL,
Complaint_Status VARCHAR(20) NOT NULL DEFAULT 'Pending',
Complaint_Date DATETIME NOT NULL DEFAULT GETDATE());    

-- Foreign Key Constraints
-- User_ID references the shared User table.
-- Admin_ID references the administrator account.
-- Foreign keys will be added after shared table integration.