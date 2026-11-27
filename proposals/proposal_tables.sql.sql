CREATE DATABASE FreelancingPlatformDB;
GO

USE FreelancingPlatformDB;
GO

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