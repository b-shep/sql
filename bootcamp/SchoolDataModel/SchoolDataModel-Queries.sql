SELECT NameFirst, NameLast, ZIP, c.Name
	FROM Enrollment e
		INNER JOIN 
			Student s
				ON e.studentID = s.ID
		INNER JOIN
			Course c
				ON e.CourseID = c.ID;


	
