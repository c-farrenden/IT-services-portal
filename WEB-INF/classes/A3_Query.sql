-- Create database
CREATE DATABASE [SENG2050_A3];
-- Use database
USE [SENG2050_A3];
-- User that queries database
CREATE LOGIN jdbcUser
WITH PASSWORD = 'mysecur3Passw0rd!';
CREATE USER jdbcUser
FOR LOGIN jdbcUser;
-- Provide privelges/permissions
GRANT SELECT, INSERT, UPDATE, DELETE
TO jdbcUSER;
-- Table for users
CREATE TABLE Users (
    username VARCHAR(100),
    password VARCHAR(100),
    roles VARCHAR(10),
    firstName VARCHAR(100),
    lastName VARCHAR(100),
    email VARCHAR(100),
    ContactNo VARCHAR(100)
);
-- Table for all details regarding issues
CREATE TABLE Issues(
    states VARCHAR(20),
    category VARCHAR(20),
    title VARCHAR(30),
    descriptions VARCHAR(200),
    resolutionDetails VARCHAR(100),
    comments VARCHAR(100),
    submittedBy VARCHAR(100),
    dateTimeReported DATETIME,
    dateTimeResolved DATETIME,
    issueID INT IDENTITY(1,1) PRIMARY KEY
);
-- Table for comments -- not used anyway
CREATE TABLE Comments(
    issueID INT PRIMARY KEY,
    FOREIGN KEY (issueID) REFERENCES Issues(issueID),
    comment VARCHAR(100)
); 
-- Knowledge-Base table
CREATE TABLE KnowledgeBase(
    issueID INT PRIMARY KEY,
    FOREIGN KEY (issueID) REFERENCES Issues(issueID)
);
-- Delete tables if needed
DROP TABLE Users;
DROP TABLE Issues;
DROP TABLE KnowledgeBase;
DROP TABLE Stats;
-- All users
INSERT INTO Users VALUES('CF','12345','ITStaff','Connor','Farrenden','c3374676@uon.edu.au', '0412345678');
INSERT INTO Users VALUES('MF','12345','ITStaff','Max','Faulkner','c3380667@uon.edu.au', '0412345678');
INSERT INTO Users VALUES ('js','vxuhJTPu', 'ITStaff','John', 'Smith', 'jsmith@acme.com', '+61 483 021 859');
INSERT INTO Users VALUES ('ar','frug2X3D', 'ITStaff','Alyson ', 'Roach', 'aroach@acme.com', '+61 483 021 860');
INSERT INTO Users VALUES ('jd','SvTPk9dE', 'ITStaff','Joe ', 'Donaldson', 'jdonaldson@acme.com', '+61 483 021 861');
INSERT INTO Users VALUES ('ss','yY4f5bbX', 'ITStaff','Susanne ', 'Sawyer', 'ssawyer@acme.com', '+61 483 021 862');
INSERT INTO Users VALUES ('rs','tHqcjcZB', 'ITStaff','Ranjit Searle', 'Searle', 'rsearle@acme.com', '+61 483 021 863');
INSERT INTO Users VALUES ('jc','adr9YB9G', 'ITStaff','Juliette ', 'Coleman', 'jcoleman@acme.com', '+61 483 021 864');
INSERT INTO Users VALUES('JA','12345','User','James','Anderson','c3380667@uon.edu.au', '0412345678');
INSERT INTO Users VALUES ('jb','k7vnrRwC', 'User','Judy ', 'Berry', 'jberry@acme.com', '+61 483 021 865');
INSERT INTO Users VALUES ('hn','y64B8GYd', 'User','Henry ', 'Naylor', 'hnaylor@acme.com', '+61 483 021 866');
INSERT INTO Users VALUES ('mh','GA66SDnR', 'User','Marcia ', 'Holloway', 'mholloway@acme.com', '+61 483 021 867');
INSERT INTO Users VALUES ('nf','mrbKndY4', 'User','Noreen ', 'Farmer', 'nfarmer@acme.com', '+61 483 021 868');
INSERT INTO Users VALUES ('rf','UAWLgGYA', 'User','Roberta ', 'Ferguson', 'rferguson@acme.com', '+61 483 021 869');
INSERT INTO Users VALUES ('fm','12345','User','Max','Faulkner','maxefaulkner@gmail.com', '0412345678');