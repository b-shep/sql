SELECT Name as 'Contact Name', 
		concat(City, ', ', State) as 'Location',
		concat('$', format(Sales, 2)) as 'Sales'
    FROM Customer;
SELECT * FROM Customer;
SELECT * FROM State;

SELECT c.Name, City, State, s.Name
	FROM Customer c
		INNER JOIN
			State s
				on c.State = s.Code;


