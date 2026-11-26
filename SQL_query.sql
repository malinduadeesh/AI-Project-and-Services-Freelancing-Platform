
CREATE DATABASE FreelancingPlatformDB;
USE FreelancingPlatformDB;

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



CREATE TABLE Freelancer (
    Freelancer_ID INT PRIMARY KEY,
    Freelancer_Description NVARCHAR(MAX),
    Git NVARCHAR(255),
CONSTRAINT FK_Freelancer_User
        FOREIGN KEY (Freelancer_ID)
        REFERENCES [User](User_ID)
);


CREATE TABLE AI_Skill (
    Skill_ID INT IDENTITY(1,1) PRIMARY KEY,
    Skill NVARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE AI_Service (
    Service_ID INT IDENTITY(1,1) PRIMARY KEY,
    Service NVARCHAR(100) NOT NULL UNIQUE
);


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

