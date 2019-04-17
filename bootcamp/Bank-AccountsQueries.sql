SELECT * FROM Transaction;
SELECT COUNT(*) FROM Transaction;
SELECT COUNT(*) FROM Transaction
	WHERE TXN_Type = 'Deposit';
SELECT MIN(amount) as 'MIN'
	FROM Transaction;



