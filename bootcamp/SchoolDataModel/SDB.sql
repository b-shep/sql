DROP DATABASE IF EXISTS SchoolDataModel;
CREATE DATABASE SchoolDataModel;
USE SchoolDataMOdel;

-- Student Table
CREATE TABLE Student(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    NameFirst		NVARCHAR(50)	NOT NULL,
    NameLast		NVARCHAR(50)	NOT NULL,
	Street			NVARCHAR(50)	NOT NULL,
    City			NVARCHAR(50)	NOT NULL,
    State			NVARCHAR(2)		NOT NULL,
    ZIP				NVARCHAR(5)	NOT NULL,
    BirthDate		DATE 			NOT NULL,
    PhoneNumber		NVARCHAR(11)	NOT NULL,
    Email			NVARCHAR(50)	NOT NULL,
    SSN				NVARCHAR(9)		NOT NULL		UNIQUE
    );
    
CREATE TABLE Course(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    Name			NVARCHAR(50) 	NOT NULL,
    Code			NVARCHAR(10)	NOT NULL,
    Subject			NVARCHAR(50)	NOT NULL
    );

CREATE TABLE Instructor(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
	NameFirstInst	NVARCHAR(50)	NOT NULL,
    NameLastInst	NVARCHAR(50)	NOT NULL,
    CourseID		INT 			NOT NULL,
    FOREIGN KEY(CourseID) REFERENCES Course(ID)
);
    
CREATE TABLE Enrollment(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    Grade			DECIMAL(5,2),
    StudentID		INT 			NOT NULL,
    CourseID		INT 			NOT NULL,
    FOREIGN KEY(StudentID) REFERENCES Student(ID),
    FOREIGN KEY(CourseID) REFERENCES Course(ID)
);


INSERT INTO Student VALUES
	(1, 'Ben', 'Shepherd', '1079 East Waldo Road', 'Belfast', 'ME', '04915', '1993-10-13', '2073221753', 'ben1shep1herd@gmail.com', '00000000'),
	(2, 'John', 'Smith', '123 Green Road', 'Toledo', 'OH', '59603', '1990-12-02', '1233455678', 'john@aol.com', '000000001'),
	(3, 'Acme', 'inc.','1432 Shore Road', 'Jersey City','NJ', '25436', '1969-4-12', '4143818491', 'acme@aol.com', '000000002'),
    (4, 'Widget', 'Corp','432 Big Road', 'Seattle', 'WA', '93840', '1969-4-20', '497865829' ,'widfge@aol.com', '000000003'),
    (5, 'Demo', 'Company','3428 Long Road', 'Columbus', 'OH', '23930', '1982-12-5', '704647541', 'demo@aol.com', '000000004')
    ;

INSERT INTO Course VALUES
	(1, 'The Birth of Biopolitics', 'PHIL143', 'Philosophy'),
    (2, 'Neurophysiology',  'NEURO420', 'Neuroscience'),
    (3, 'Computer Science', 'COMP101', 'Computer Science');


INSERT INTO Instructor VALUES
	(1, 'Michel', 'Foucault', 1),
    (2, 'Andrew', 'Huxley', 2),
    (3, 'Linus', 'Torvald', 3);

	
	



