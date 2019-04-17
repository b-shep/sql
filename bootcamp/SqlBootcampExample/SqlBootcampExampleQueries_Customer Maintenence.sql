SELECT * FROM Customer;
SELECT * FROM Customer
	WHERE Name LIKE '%a%.'
	 or Name like 'D%';
SELECT * FROM Customer 

-- insert statement
	WHERE name like 'A%'
		and State = 'NJ';

-- Regular expression to select all records with names that begin with vowel
SELECT * FROM Customer
	WHERE name REGEXP "^[aeiou].*";
    
SELECT * FROM Customer;

INSERT INTO Customer
	VALUES (16,'Gibson','Memphis','TN',4567890000,1);

INSERT INTO Customer (Name, City, State, Sales, Active)
	VALUES ('Ibanez', 'Bensalem', 'PA', 2354592233, 1),
			('Ibanez', 'Bensalem', 'PA', 2354592233, 1);
            
-- Update statement
UPDATE Customer 
	SET Name = 'Perl', 
		City = 'Test',
        State = 'TE'
	WHERE id = '15';

-- Delete 
	-- SELECT * FROM Customer 
DELETE FROM Customer 
	WHERE ID = '16';

-- Select using 'in' clause
SELECT * FROM Customer 
	WHERE id in (10,11,1);

