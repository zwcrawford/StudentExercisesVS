
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

-- Created Student Table with five values.
CREATE TABLE Student 
(
	Id int NOT NULL PRIMARY KEY IDENTITY,
	[CohortId] int NOT NULL FOREIGN KEY (CohortId) REFERENCES Cohort(Id),
	[FirstName] TEXT NOT NULL,
	[LastName] TEXT NOT NULL,
	[SlackHandle] TEXT NOT NULL
);
INSERT INTO Student ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (1, 'Gabs', 'Crawford', '@GabryC');
INSERT INTO Student ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (1, 'Zac', 'Crawford', '@ZacC');
INSERT INTO Student ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (1, 'Kim', 'Crawford', '@KimC');
INSERT INTO Student ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (2, 'Allison', 'Kraus', '@AllisonK');
INSERT INTO Student ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (2, 'Katy', 'Tunstall', '@KatyT');

SELECT * FROM Student;

-- Created Instructor Table with four values.
CREATE TABLE Instructor 
(
	Id int NOT NULL PRIMARY KEY IDENTITY,
	[CohortId] int NOT NULL FOREIGN KEY (CohortId) REFERENCES Cohort(Id),
	[FirstName] TEXT NOT NULL,
	[LastName] TEXT NOT NULL,
	[SlackHandle] TEXT NOT NULL
);
INSERT INTO Instructor ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (1, 'Meg', 'Ducharme', '@MegD');
INSERT INTO Instructor ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (2, 'Leah', 'Gwin', '@LeahG');
INSERT INTO Instructor ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (3, 'Emily', 'Lemmon', '@EmilyL');
INSERT INTO Instructor ([CohortId], [FirstName], [LastName], [SlackHandle])
VALUES (3, 'Jisie', 'David', '@JisieD');

SELECT * FROM Instructor;