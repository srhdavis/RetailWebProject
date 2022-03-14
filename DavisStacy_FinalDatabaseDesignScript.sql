--Final Database Design Script for MSIS-3363-31269 Web Application Project

use s21_ksstacyrh
go

DROP PROCEDURE spAuthenticateLogin, spInsertNewItem, spDisplayPlatform, spDisplaySource, spDisplayLocation, spDisplayOwner, spDisplaySize, spDisplayItemType
go  

drop table TTRTransaction, TTRWebsiteUser, TTRDescription, TTRAuthentication, TTRPayment, TTRUserShipTo, TTRUserBillTo, TTRItemSize, TTRItemType, TTRPlatform, TTRSource, TTROwner, TTRLocation
go


--Create Tables:
Create table TTRLocation
(
	LocID int Identity(1,1) not null Primary Key,
	LocRow char(2) not null,
	LocBox int not null,
	LocNum int null
)

Create table TTROwner
(
	OwnerID int Identity(1,1) not null Primary Key,
	OFirstName varchar(20) not null,
	OLastName varchar(20) not null,
	CommRate decimal(4,1) null												--Percentage I am paid for selling item
)

Create table TTRSource
(
	SourceID int Identity(1,1) not null Primary Key,
	SName varchar(50) not null,
	SStreet varchar(50) null,
	SCity varchar(20) null,
	SState char(20) null,
	SZip int null
)

Create table TTRPlatform
(
	PlatformID int Identity(1,1) not null Primary Key,
	PName varchar(20) not null,
	PWebsite varchar(100) null,
)

Create table TTRItemType
(
	ItemTypeID int Identity(1,1) not null Primary Key,
	ItemType varchar(20) not null,
	ItemSubType varchar(20) null
)

Create table TTRItemSize
(
	SizeID int Identity(1,1) not null Primary Key,
	SizeName varchar(20) not null,
	SizeAbbr varchar(5) not null,
	SizeDescription varchar(50) null
)

Create table TTRUserBillTo
(
	BillToID int Identity(1,1) not null Primary Key,
	BTStreet varchar(30) not null,
	BTCity varchar(20) not null,
	BTState char(2) not null,
	BTZip int not null
)

Create table TTRUserShipTo
(
	ShipToID int Identity(1,1) not null Primary Key,
	STLocation varchar(10) null,
	STAttn varchar(20) null,
	STStreet varchar(30) not null,
	STCity varchar(20) not null,
	STState char(2) not null,
	STZip int not null
)

Create table TTRPayment
(
	PaymentID int Identity(1,1) not null Primary Key,
	PayType char(10) not null
)

Create table TTRAuthentication
(
	PasswordID int Identity(1,1) not null Primary Key,
	UPassword varchar(20) not null
)

Create table TTRDescription
(
	ItemID int Identity(1,1) not null Primary Key,
	ItemName varchar(50) not null,
	BrandName varchar(50) null,
	ItemTypeID int not null Foreign Key references TTRItemType(ItemTypeID),
	SizeID int not null Foreign Key references TTRItemSize(SizeID),
	ItemDescription varchar(200) null,
	UniqueCode varchar(50) null,
	OriginalPrice decimal(6,2) null,
	OriginalPurchase date null,
	SellingPrice decimal(6,2) not null,
	OwnerID int null Foreign Key references TTROwner(OwnerID),
	LocID int null Foreign Key references TTRLocation(LocID),
	SourceID int null Foreign Key references TTRSource(SourceID),
	Platform1 int null Foreign Key references TTRPlatform(PlatformID),					--If listed on additional platforms
	Platform2 int null Foreign Key references TTRPlatform(PlatformID),					--If listed on additional platforms
	Platform3 int null Foreign Key references TTRPlatform(PlatformID),					--If listed on additional platforms
)

Create table TTRWebsiteUser
(
	UserID int Identity(1,1) not null Primary Key,
	Username varchar(30) not null,
	UFirstName varchar(20) not null,
	ULastName varchar(20) not null,
	UPhone char(10) null,																
	UEmail varchar(30) not null,														--Change to not null
	PasswordID int not null Foreign Key references TTRAuthentication(PasswordID),
	BillToID int not null Foreign Key references TTRUserBillTo(BillToID),
	ShipTo1 int null Foreign Key references TTRUserShipTo(ShipToID),					--Optional Shipping
	ShipTo2 int null Foreign Key references TTRUserShipTo(ShipToID),					--Optional Shipping
	ShipTo3 int null Foreign Key references TTRUserShipTo(ShipToID),					--Optional Shipping
)

Create table TTRTransaction
(
	TransactionID int Identity(1,1) not null Primary Key,
	TDate date not null,
	TTime time not null,
	PaymentID int not null Foreign Key references TTRPayment(PaymentID),
	UserID int not null Foreign Key references TTRWebsiteUser(UserID),
	ShipToID int not null Foreign Key references TTRUserShipTo(ShipToID),
	ItemID int not null Foreign Key references TTRDescription(ItemID),
)
go


--Add Values:
--Insert records into the TTRAuthentication table.
INSERT into TTRAuthentication
	(UPassword)
	values
	('MyPass'),
	('S21pa$$word')
go

--Insert records into the TTRUserShipTo table.
INSERT into TTRUserShipTo
	(STLocation, STAttn, STStreet, STCity, STState, STZip)
	values
	('Home', 'Stacy Davis', '16090 S 85th East Ave', 'Bixby', 'OK', 74008),
	('Work', 'Kim Strom', '219 Student Union', 'Stillwater', 'OK', 74078)
go

--Insert records into the TTRUserBillTo table.
INSERT into TTRUserBillTo
	(BTStreet, BTCity, BTState, BTZip)
	values
	('16090 S 85th East Ave', 'Bixby', 'OK', 74008),
	('219 Student Union', 'Stillwater', 'OK', 74078)
go

--Insert records into the TTRWebsiteUser table.
INSERT into TTRWebsiteUser
	(Username, UFirstName, ULastName, UPhone, UEmail, PasswordID, BillToID, ShipTo1, ShipTo2, ShipTo3)
	values
	('stacyrh', 'Stacy', 'Davis', 9188522076, 'stacyrh@okstate.edu', 1, 1, 1, null, null),
	('kstrom', 'Kim', 'Strom', 4057448618, 'kim.strom@okstate.edu', 2, 2, 2, null, null)
go

--Insert records into the TTRLocation table.
INSERT into TTRLocation
	(LocRow, LocBox, LocNum)
	values
	('A', 01, 01),
	('A', 01, 02),
	('B', 01, 01),
	('B', 01, 02)
go

--Insert records into the TTROwner table.
INSERT into TTROwner
	(OFirstName, OLastName, CommRate)
	values
	('Stacy', 'Davis', 100.0),
	('Kim', 'Strom', 50.0)
go

--Insert records into the TTRSource table.
INSERT into TTRSource
	(SName, SStreet, SCity, SState, SZip)
	values
	('Goodwill- Glenpool', '502 W 125th Pl S', 'Glenpool', 'OK', '74033'),
	('Dillard''s- Woodland Hills', '7021 S Memorial Dr', 'Tulsa', 'OK', '74133'),
	('The Salvation Army- Broken Arrow', '4700 W Kenosha St', 'Broken Arrow', 'OK', '74012')
go

--Insert records into the TTRPlatform table.
INSERT into TTRPlatform
	(PName, PWebsite)
	values
	('Poshmark', 'https://poshmark.com/closet/ttownresale'),
	('Ebay', 'https://www.ebay.com/usr/ttownresale'),
	('Mercari', 'https://www.mercari.com/u/155547592/')
go

--Insert records into the TTRItemType table.
INSERT into TTRItemType
	(ItemType, ItemSubType)
	values
	('Miscellaneous', null),
	('Jewelry', null),
	('Shirt', null),
	('Pants', null),
	('Shoes', null),
	('Home', null)
go

--Insert records into the TTRItemSize table.
INSERT into TTRItemSize
	(SizeName, SizeAbbr, SizeDescription)
	values
	('One Size', 'OS', 'One Size Fits Most'),
	('Small', 'Sm', null),
	('Medium', 'Md', null),
	('Large', 'Lg', null),
	('Extra-Large', 'XL', null)
go


--DISPLAY PROCEDURES:
--Stored Procedure to Display ItemType:
CREATE PROCEDURE spDisplayItemType
as 
BEGIN
	SELECT ItemTypeID, ItemType, ItemSubType
	FROM TTRItemType
	ORDER BY ItemType
END
go

--Stored Procedure to Display Size:
CREATE PROCEDURE spDisplaySize
as 
BEGIN
	SELECT SizeID, SizeName, SizeAbbr, SizeDescription
	FROM TTRItemSize
	ORDER BY SizeName
END
go

--Stored Procedure to Display Size (Concatenates First and Last Name):
CREATE PROCEDURE spDisplayOwner
as 
BEGIN
	SELECT OwnerID, OLastName, OFirstName, CommRate, CONCAT(OLastName, ', ', OFirstName) as FullName
	FROM TTROwner
	ORDER BY OLastName, OFirstName
END
go

--Stored Procedure to Display Location (Concatenates Location):
CREATE PROCEDURE spDisplayLocation
as 
BEGIN
	SELECT LocID, LocRow, LocBox, LocNum, CONCAT(LocRow, '-', LocBox, '-', LocNum) as 'Row-Box-Number'
	FROM TTRLocation
	ORDER BY LocRow, LocBox, LocNum
END
go

--Stored Procedure to Display Source:
CREATE PROCEDURE spDisplaySource
as 
BEGIN
	SELECT SourceID, SName, SStreet, SCity, SState, SZip
	FROM TTRSource
	ORDER BY SName
END
go

--Stored Procedure to Display Platform:
CREATE PROCEDURE spDisplayPlatform
as 
BEGIN
	SELECT PlatformID, PName, PWebsite
	FROM TTRPlatform
	ORDER BY PName
END
go


--AUTHENTICATION PROCEDURES:
--Stored Procedure to Authenticate Username and Password:
CREATE PROCEDURE spAuthenticateLogin
@UserID int
as 
BEGIN
	SELECT Username, UFirstName, ULastName, UPhone, UEmail, BillToID, ShipTo1, ShipTo2, ShipTo3, TTRWebsiteUser.PasswordID, UPassword
	FROM TTRWebsiteUser	JOIN TTRAuthentication ON TTRWebsiteUser.PasswordID = TTRAuthentication.PasswordID
	WHERE UserID = @UserID
END
go


--INPUT PROCEDURES:
--Stored Procedure to Insert New Item from Website:
CREATE PROCEDURE spInsertNewItem
	@ItemName varchar(50),
	@BrandName varchar(50),
	@ItemTypeID int,
	@SizeID int,
	@ItemDescription varchar(200),
	@UniqueCode varchar(50),
	@OriginalPrice decimal(6,2),
	@OriginalPurchase date,
	@SellingPrice decimal(6,2),
	@OwnerID int,
	@LocID int,
	@SourceID int,
	@Platform1 int,					
	@Platform2 int,					
	@Platform3 int,
	@ItemID int OUT
as
BEGIN
	INSERT into TTRDescription (ItemName, BrandName, ItemTypeID, SizeID, ItemDescription, 
		UniqueCode, OriginalPrice, OriginalPurchase, SellingPrice, OwnerID, LocID, SourceID, 
		Platform1, Platform2, Platform3)
	VALUES (@ItemName, @BrandName, @ItemTypeID, @SizeID, @ItemDescription, 
		@UniqueCode, @OriginalPrice, @OriginalPurchase, @SellingPrice, @OwnerID, @LocID, @SourceID, 
		@Platform1, @Platform2, @Platform3)
	SELECT @ItemID - SCOPE_IDENTITY()
END
go



select *
from TTRDescription
go