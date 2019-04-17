DROP DATABASE IF EXISTS Accounts;
CREATE DATABASE Accounts;
USE Accounts;

CREATE TABLE Account(
	ID int not null primary key auto_increment,
    Account_Holder nvarchar(20) not null,
    Balance decimal(8,2) not null,
    Fees decimal(6,2) not null
    );

CREATE TABLE Transaction(
	ID int not null primary key auto_increment,
    Amount decimal(6,2) not null,
    TXN_type nvarchar(10),
    Account_ID int
    );

INSERT INTO Account(Account_Holder, Balance ,Fees)
	VALUES
    ('Anna Bengel',8888.00,250.00),
    ('Chase Williams',5444.00,175.00),
    ('Jonelle Wehrman',3333.00,88.00),
    ('Steven Ross', 3322.00,88.00);

INSERT INTO Transaction(Amount, TXN_type, Account_ID)
	VALUES
    (500.00,'Deposit',3),
    (200.00,'Withdrawl',4),
    (-200.00,'Deposit',4),
    (248.00,'Deposit',1);
    
    
    
