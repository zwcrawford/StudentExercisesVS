
-- Created Exercise Table with three values.
CREATE TABLE Exercise 
(
	Id int NOT NULL PRIMARY KEY IDENTITY,
	[Name] TEXT NOT NULL,
	[Language] TEXT NOT NULL
);

INSERT INTO Exercise ([Name], [Language])
VALUES ('Planets', 'C#');
INSERT INTO Exercise ([Name], [Language])
VALUES ('Random Numbers', 'JavaScript');
INSERT INTO Exercise ([Name], [Language])
VALUES ('Nutshell', 'JavaScript');

SELECT * FROM Exercise;

-- Created Cohort Table with three values.
CREATE TABLE Cohort 
(
	Id int NOT NULL PRIMARY KEY IDENTITY,
	[Name] TEXT NOT NULL,
);
INSERT INTO Cohort ([Name])
VALUES ('Cohort 29');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 30');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 31');

SELECT * FROM Cohort;
