INSERT INTO MovieGenre (MovieId, GenreID)
	VALUES
		(3, 9),
        (4, 2),
        (1, 7),
        (2, 4);
        
SELECT * FROM MovieGenre;

SELECT Title, Rating, Year, Director, NameGenre
	FROM MovieGenre mg
		INNER JOIN
			Movie m
				ON m.ID = mg.MovieID
		INNER JOIN 
			Genre g
				ON mg.MovieID = g.ID;