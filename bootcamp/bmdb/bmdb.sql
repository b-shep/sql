DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

CREATE TABLE Movie(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
	Title			NVARCHAR(100)	NOT NULL,
    Rating			NVARCHAR(5)		NOT NULL,
    Year			INT 			NOT NULL,
    Director		NVARCHAR(50)	NOT NULL
);

CREATE TABLE Actor(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    NameFirst		NVARCHAR(50)	NOT NULL,
    NameLast		NVARCHAR(50)	NOT NULL,
	BirthDate		DATE			NOT NULL

);

CREATE TABLE Genre(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
	NameGenre		NVARCHAR(50)	NOT NULL
);

CREATE TABLE Credits(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
	MovieID			INT 			NOT NULL,
    ActorID			INT 			NOT NULL,
    FOREIGN KEY(MovieID) REFERENCES Movie(ID),
    FOREIGN KEY(ActorID) REFERENCES Actor(ID),
    CONSTRAINT act_mov UNIQUE (ActorID, MovieID)
);

CREATE TABLE MovieGenre(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
	MovieID			INT 			NOT NULL,
    GenreID			INT 			NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movie(ID),
    FOREIGN KEY (GenreID) REFERENCES Genre(ID)
    );

INSERT INTO Movie(ID, Title, Rating, Year, Director)
	VALUES
		(1, 'Repo Man', 'R', 1984, 'Alex Cox'),
        (2, 'The VVitch', 'R', 2015, 'Robert Eggars'),
        (3, '28 Days Later', 'R', 2002, 'Danny Boyle'),
        (4, 'The Revenant', 'R', 2015, 'Alejandro G. Inarritu'),
        (5, 'Sorry to Bother You', 'R', 2018, 'Boots Riley'),
        (6, 'No Country For Old Men', 'R', 2007, 'Joel and Ethan Coen'),
        (7, 'Gummo', 'R', 1997, 'Harmony Korine');
        
        
INSERT INTO Actor(ID, NameFirst, NameLast, BirthDate)
	VALUES
		(1, 'Emilio', 'Estevez', '1962-05-12'),
        (2, 'Anya', 'Taylor-Joy', '1996-04-15'),
        (3, 'Cillian', 'Murphy', '1976-05-25'),
        (4, 'Leonardo', 'DiCaprio', '1974-11-11'),
        (5, 'LaKeith', 'Stanfield', '1991-08-12'),
        (6, 'Javier', 'Bardem', '1969-03-16'),
        (7, 'Jacob', 'Reynolds', '1983-05-13');
        
INSERT INTO Genre(ID, NameGenre)
	VALUES
		(1, 'Science Fiction'),
		(2, 'Comedy'),
		(3, 'Action'),
		(4, 'Fantasy'),
		(5, 'Drama'),
		(6, 'Documentary'),
		(7, 'Thriller'),
		(8, 'Adventure'),
		(9, 'Historical');
