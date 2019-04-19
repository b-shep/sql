DROP DATABASE IF EXISTS PRS;
CREATE DATABASE PRS;
USE PRS;

CREATE TABLE User(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    UserName		NVARCHAR(25)	NOT NULL		UNIQUE,
    Password		NVARCHAR(25)	NOT NULL,
    FirstName		NVARCHAR(25)	NOT NULL,
    LastName		NVARCHAR(25)	NOT NULL,
    PhoneNumber		NVARCHAR(12)	NOT NULL,
    Email			NVARCHAR(25)	NOT NULL		UNIQUE,
    StreetAddress	NVARCHAR(25)	NOT NULL,
    City			NVARCHAR(25)	NOT NULL,
    ZIP				INT 			NOT NULL,
    IsReviewer 		TINYINT(1)		NOT NULL,
	IsAdmin			TINYINT(1)		NOT NULL,
	IsActive 		TINYINT(1)		NOT NULL,
	DateCreated 	DATETIME		NOT NULL,
	DateUpdated		DATETIME		NOT NULL,
	UpdatedByUser 	INT				NOT NULL,
    
    CONSTRAINT user_info UNIQUE (UserName, Email)
);
    
CREATE TABLE VENDOR(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    Code 			VARCHAR(10)		NOT NULL,
	Name 			VARCHAR(255)	NOT NULL,
	Address 		VARCHAR(255)	NOT NULL,
	City 			VARCHAR(255)	NOT NULL,
	State 			VARCHAR(2)		NOT NULL,
	Zip 			VARCHAR(5)		NOT NULL,
	PhoneNumber 	VARCHAR(12)		NOT NULL,
	Email 			VARCHAR(100)	NOT NULL,
	IsPreApproved 	TINYINT(1)		NOT NULL,
	IsActive 		TINYINT(1)		NOT NULL,
	DateCreated 	DATETIME		NOT NULL,
	DateUpdated		DATETIME		NOT NULL,
	UpdatedByUser 	INT				NOT NULL
);

CREATE TABLE Product(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    VendorID 		INT				NOT NULL,
	PartNumber 		VARCHAR(50)		NOT NULL,
	Name 			VARCHAR(150)	NOT NULL,
	Price 			DECIMAL(10,2)	NOT NULL,
	Unit 			VARCHAR(255),
	PhotoPath 		VARCHAR(255),
	IsActive 		TINYINT(1)		NOT NULL,
	DateCreated 	DATETIME		NOT NULL,
	DateUpdated		DATETIME		NOT NULL,
	UpdatedByUser 	INT				NOT NULL,
    
    FOREIGN KEY(VendorID) REFERENCES Vendor(ID)
);

CREATE TABLE PurchaseRequest(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    UserID 			INT				NOT NULL,
	Description 	VARCHAR(100)	NOT NULL,
	Justification 	VARCHAR(255)	NOT NULL,
	DateNeeded 		DATE			NOT NULL,
	DeliveryMode 	VARCHAR(25)		NOT NULL,
	Status 			VARCHAR(20)		NOT NULL,
	Total 			DECIMAL(10,2)	NOT NULL,
	SubmittedDate 	DATETIME		NOT NULL,
	ReasonForRejection VARCHAR(100),
	IsActive 		TINYINT(1)		NOT NULL,
	DateCreated 	DATETIME		NOT NULL,
	DateUpdated		DATETIME		NOT NULL,
	UpdatedByUser 	INT				NOT NULL,
    
    FOREIGN KEY (UserID) REFERENCES User(ID)
);

CREATE TABLE PurchaseRequestLineItem(
	ID				INT				NOT NULL 		AUTO_INCREMENT		PRIMARY KEY,
    PurchaseRequestID INT			NOT NULL,
	ProductID 		INT				NOT NULL,
	Quantity 		INT				NOT NULL,
    
    FOREIGN KEY (PurchaseRequestID) REFERENCES PurchaseRequest(ID),
    FOREIGN KEY (ProductID) REFERENCES Product(ID)
);
