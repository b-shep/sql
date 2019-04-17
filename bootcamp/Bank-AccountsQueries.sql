SELECT * FROM Transaction;
SELECT COUNT(*) FROM Transaction;
SELECT COUNT(*) FROM Transaction
	WHERE TXN_Type = 'Deposit';
SELECT MIN(amount) as 'MIN'
	FROM Transaction;
    
-- WRONG way to do a join
SELECT Account_Holder, TXN_type, Amount FROM Account, Transaction
	WHERE Account.ID = Transaction.accountID;

-- RIGHT way to do an inner join
SELECT Account_Holder, TXN_type, Amount 
	FROM Account a -- alias
		inner join
			Transaction t -- alias
				on a.ID = t.AccountID;
-- Left outer join
SELECT Account_Holder, TXN_type, Amount
	FROM Account a
		LEFT OUTER JOIN
			Transaction t
				on a.ID = t.AccountID;