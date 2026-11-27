
CREATE DATABASE FreelancingPlatformDB;
GO

USE FreelancingPlatformDB;
GO

-- Member 1 / Shared - User and Freelancer

CREATE TABLE [User] (
    User_ID INT IDENTITY(1,1) PRIMARY KEY,
    Firstname NVARCHAR(50) NOT NULL,
    Lastname NVARCHAR(50) NOT NULL,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Contact_Num NVARCHAR(20),
    [Password] NVARCHAR(255) NOT NULL,
    User_Type NVARCHAR(20) NOT NULL,
    CONSTRAINT CK_User_Type
        CHECK (User_Type IN ('Freelancer', 'Client', 'Admin', 'Manager'))
);
GO

CREATE TABLE Freelancer (
    Freelancer_ID INT PRIMARY KEY,
    Freelancer_Description NVARCHAR(MAX),
    Git NVARCHAR(255),
    CONSTRAINT FK_Freelancer_User
        FOREIGN KEY (Freelancer_ID)
        REFERENCES [User](User_ID)
);
GO

CREATE TABLE AI_Skill (
    Skill_ID INT IDENTITY(1,1) PRIMARY KEY,
    Skill NVARCHAR(100) NOT NULL UNIQUE
);
GO

CREATE TABLE AI_Service (
    Service_ID INT IDENTITY(1,1) PRIMARY KEY,
    Service NVARCHAR(100) NOT NULL UNIQUE
);
GO

CREATE TABLE Freelancer_Skill (
    Freelancer_ID INT NOT NULL,
    Skill_ID INT NOT NULL,
    CONSTRAINT PK_Freelancer_Skill
        PRIMARY KEY (Freelancer_ID, Skill_ID),
    CONSTRAINT FK_Freelancer_Skill_Freelancer
        FOREIGN KEY (Freelancer_ID)
        REFERENCES Freelancer(Freelancer_ID),
    CONSTRAINT FK_Freelancer_Skill_Skill
        FOREIGN KEY (Skill_ID)
        REFERENCES AI_Skill(Skill_ID)
);
GO

CREATE TABLE Freelancer_Service (
    Freelancer_ID INT NOT NULL,
    Service_ID INT NOT NULL,
    CONSTRAINT PK_Freelancer_Service
        PRIMARY KEY (Freelancer_ID, Service_ID),
    CONSTRAINT FK_Freelancer_Service_Freelancer
        FOREIGN KEY (Freelancer_ID)
        REFERENCES Freelancer(Freelancer_ID),
    CONSTRAINT FK_Freelancer_Service_Service
        FOREIGN KEY (Service_ID)
        REFERENCES AI_Service(Service_ID)
);
GO

-- Member 5 - AI Services and Administration

CREATE TABLE Complaint (
    Complaint_ID INT IDENTITY(1,1) PRIMARY KEY,
    User_ID INT NOT NULL,
    Admin_ID INT NULL,
    Complaint NVARCHAR(MAX) NOT NULL,
    Complaint_Status NVARCHAR(20) NOT NULL DEFAULT 'Pending',
    Complaint_Date DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Complaint_User
        FOREIGN KEY (User_ID)
        REFERENCES [User](User_ID),
    CONSTRAINT FK_Complaint_Admin
        FOREIGN KEY (Admin_ID)
        REFERENCES [User](User_ID)
);
GO

-- Member 3 - Proposal and Assignment Tables

CREATE TABLE Proposal (
    Proposal_ID INT IDENTITY(1,1) PRIMARY KEY,
    Project_ID INT NOT NULL,
    Freelancer_ID INT NOT NULL,
    Proposal_Date DATE NOT NULL,
    Proposal_Description VARCHAR(MAX),
    Proposal_File VARCHAR(255)
);
GO

CREATE TABLE Project_Assignment (
    Project_ID INT NOT NULL,
    Freelancer_ID INT NOT NULL,
    Assigned_Date DATE NOT NULL,
    Price DECIMAL(10,2),
    Assignment_Status VARCHAR(50),
    PRIMARY KEY (Project_ID, Freelancer_ID)
);
GO
