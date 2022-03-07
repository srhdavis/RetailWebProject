use aa_classroom;
go



DROP TABLE OrderLine;
DROP TABLE ShipmentLine;
DROP TABLE Shipment;
DROP TABLE Inventory;
DROP TABLE Category;
DROP TABLE Orders;
DROP TABLE OrderSource;
DROP TABLE Customer;



CREATE TABLE Customer
(CID INT not null, 
CLast varchar(30),
CFirst varchar(30),
cmi CHAR(1),
cbirthdate date,
caddress varchar(50),
ccity varchar(30),
cstate CHAR(2),
czip varchar(10),
CPhone1 varchar(12),
CPhone2 varchar(12),
cuserid varchar(50),
cpassword varchar(15));

ALTER TABLE Customer ADD CONSTRAINT CustomerCIDpk PRIMARY KEY (CID);


CREATE TABLE OrderSource
(osid INT not null,
osdesc varchar(30));

ALTER TABLE OrderSource ADD CONSTRAINT OrderSourceosidpk PRIMARY KEY(osid);

CREATE TABLE Orders
(oid INT not null, 
odate date,
omethpmt varchar(10),
CID INT,
osid INT);

ALTER TABLE Orders ADD CONSTRAINT Ordersoidpk PRIMARY KEY (oid);
ALTER TABLE Orders ADD CONSTRAINT OrdersCIDfk FOREIGN KEY (CID) REFERENCES Customer(CID);
ALTER TABLE Orders ADD CONSTRAINT Ordersosidfk FOREIGN KEY (osid) REFERENCES OrderSource(osid);

CREATE TABLE Category
(catid INT not null,
catdesc varchar(40));

ALTER TABLE Category ADD CONSTRAINT Categorycatidpk PRIMARY KEY (catid);




CREATE TABLE Inventory
(invid INT not null,
invsize varchar(10) not null,
invprice decimal(6,2) not null,
invqoh INT not null,
itemdesc varchar(30),
color varchar(20),
catid int);

ALTER TABLE Inventory ADD CONSTRAINT Inventoryinvidpk PRIMARY KEY (invid);
ALTER TABLE Inventory ADD CONSTRAINT InventoryCatIDfk FOREIGN KEY (CatID) REFERENCES Category(CatID);



CREATE TABLE Shipment
(shipid INT not null,
ShipDate date,
ArrivalDate date);

ALTER TABLE Shipment ADD CONSTRAINT Shipmentshipidpk PRIMARY KEY (shipid);

CREATE TABLE ShipmentLine
(shipid INT not null, 
invid INT not null,
slquantityOrdered INT,
slquantityreceived int);

ALTER TABLE ShipmentLine ADD CONSTRAINT ShipmentLineshipidfk FOREIGN KEY (shipid) REFERENCES Shipment(shipid);
ALTER TABLE ShipmentLine ADD CONSTRAINT ShipmentLineinvidfk FOREIGN KEY (invid)REFERENCES Inventory(invid);
ALTER TABLE ShipmentLine ADD CONSTRAINT ShipmentLineshipidinvidpk PRIMARY KEY(shipid,invid);

CREATE TABLE OrderLine 
(oid INT not null, 
invid INT not null, 
olquantity INT NOT NULL);

ALTER TABLE OrderLine ADD CONSTRAINT OrderLineoidfk FOREIGN KEY (oid) REFERENCES Orders(oid);
ALTER TABLE OrderLine ADD CONSTRAINT OrderLineinvidfk FOREIGN KEY (invid)REFERENCES Inventory(invid);
ALTER TABLE OrderLine ADD CONSTRAINT OrderLineoidinvidpk PRIMARY KEY (oid, invid);


INSERT INTO customer (CID, CLast, CFirst, cmi, cbirthdate, caddress, ccity, cstate, czip, CPhone1, CPhone2, cuserid, cpassword) VALUES
(1, 'Herrera', 'Glenda', 'E', '1982-02-04', '676 Rocky New Boulevard', 'Mobile', 'KS', '8342', '534-634-2654', '806-579-6431', 'gherree', 'GgFGmtupt'),
(2, 'Allen', 'Garry', 'A', '1991-12-01', '443 New Way', 'Toledo', 'SC', '93406', '612-436-3061', '376-477-4377', 'gallena', 'jmCvXnCRx'),
(3, 'Murillo', 'Josh', 'Z', '1944-04-19', '773 Rocky Fabien Road', 'Omaha', 'GA', '11017', '689-306-0292', '307-546-1064', 'jmurilz', 'E8gaT34X7'),
(4, 'Waller', 'Janice', 'X', '1970-07-01', '47 Yellow Clarendon St.', 'Fremont', 'GA', '49242', '733-575-4686', '458-068-5790', 'jwallex', '4fdw2QG7d'),
(5, 'Contreras', 'Aisha', 'H', '1976-12-23', '987 Fabien Way', 'Tampa', 'AL', '96649', '389-375-6502', '502-683-4832', 'acontrh', '2jO0uBjOU'),
(6, 'Herrera', 'Rick', 'E', '1985-03-28', '87 Green Narwhal Avenue', 'Colorado', 'MA', '558', '484-925-6318', '845-709-2288', 'rherree', 'AjAfg7zem'),
(7, 'Riddle', 'Levi', 'Z', '1957-06-19', '159 Nobel Drive', 'El Paso', 'ND', '54389', '851-104-7738', '180-373-9647', 'lriddlz', 'pMiCs49Fs'),
(8, 'Rojas', 'Lakesha', 'K', '1991-02-13', '33 Yellow Fabien Parkway', 'Garland', 'MA', '99386', '174-722-3739', '700-754-8413', 'lrojask', 'X4ozUVkfg'),
(9, 'French', 'Bryan', 'M', '1987-12-19', '86 South Yellow New Street', 'Phoenix', 'HI', '92383', '501-574-8954', '904-835-7577', 'bfrencm', 'Jg3NWKVxG'),
(10, 'Bean', 'Anthony', 'V', '1994-02-27', '20 First Parkway', 'Riverside', 'AZ', '56515', '974-007-0885', '584-814-2972', 'abeanv', 'QbKt8f1B7');


INSERT INTO ordersource (osid, osdesc) VALUES
(1, 'Online'),
(2, 'Retail'),
(3, 'Winter Catalog Mail Order'),
(4, 'Summer Catalog Mail Order'),
(5, 'Spring Catalog Mail Order'),
(6, 'Phone'),
(7, 'Fall Catalog Mail Order'),
(8, 'Children''s Catalog Mail Order');


INSERT INTO orders (oid, odate, omethpmt, CID, osid) VALUES
(1, '1954-08-22', 'VISA', 8, 5),
(2, '2001-02-09', 'Paypal', 9, 5),
(3, '1955-09-16', 'Checking', 8, 5),
(4, '1962-01-27', 'Checking', 6, 4),
(5, '1985-03-23', 'Paypal', 3, 2),
(6, '1989-05-08', 'Paypal', 6, 4),
(7, '1964-10-17', 'Checking', 10, 6),
(8, '1969-02-08', 'AmEx', 5, 3),
(9, '1964-12-01', 'Paypal', 10, 6),
(10, '1966-09-15', 'AmEx', 3, 2),
(11, '1980-07-22', 'Checking', 3, 2),
(12, '2005-08-31', 'Mastercard', 5, 3),
(13, '1954-01-26', 'Paypal', 7, 4),
(14, '1977-02-05', 'Mastercard', 5, 3),
(15, '1970-01-04', 'Mastercard', 10, 6),
(16, '1992-02-14', 'Checking', 1, 1),
(17, '2006-04-15', 'Checking', 9, 6),
(18, '2002-01-06', 'Paypal', 10, 6),
(19, '1954-05-12', 'Mastercard', 7, 5),
(20, '1990-11-15', 'VISA', 4, 2);

INSERT INTO category (catid, catdesc) VALUES
(1, 'Women''s Clothing'),
(2, 'Camping'),
(3, 'Imports'),
(4, 'Hiking'),
(5, 'New'),
(6, 'Hipster'),
(7, 'Children''s Clothing'),
(8, 'Misc. Sporting'),
(9, 'Men''s Clothing'),
(10, 'Sale');

INSERT INTO inventory (invid, invsize, invprice, invqoh, itemdesc, color, catid) VALUES
(1, 'S', 247.57, 34, 'egreddior trepicandor novum', 'DarkViolet', 9),
(2, 'XS', 131.17, 123, 'plorum Tam quo Versus Multum', 'DarkSlateGray', 6),
(3, 'XS', 299.43, 190, 'non Quad gravis plurissimum', 'Turquoise', 6),
(4, 'XXL', 38.90, 117, 'nomen quartu e transit. vobis', 'PaleTurquoise', 5),
(5, 'L', 341.69, 156, 'transit. non novum gravis ut', 'ForestGreen', 3),
(6, 'XXL', 234.32, 11, 'brevens, quartu nomen Quad Sed', 'DeepSkyBlue', 5),
(7, 'XL', 45.82, 196, 'si Tam quad travissimantor quo', 'LightCoral', 5),
(8, 'XS', 218.57, 29, 'in glavans quo non quis', 'Cornsilk', 1),
(9, 'M', 186.01, 39, 'venit. habitatio cognitio, non', 'SlateGrey', 10),
(10, 'S', 193.68, 111, 'Id si et plorum funem.', 'MintCream', 4),
(11, 'XL', 166.78, 66, 'estum. linguens fecit, Versus', 'Navy', 9),
(12, 'XS', 330.79, 151, 'non volcans et Multum quartu', 'DeepSkyBlue', 1),
(13, 'L', 82.01, 42, NULL, 'DimGray', 6),
(14, 'S', 271.38, 53, 'bono venit. Longam, delerium.', 'Fuchsia', 7),
(15, 'M', 34.36, 249, 'volcans Longam, in linguens', 'DarkMagenta', 1),
(16, 'M', 20.76, 45, 'quis et trepicandor quantare', 'Tan', 5),
(17, 'M', 310.52, 157, 'transit. travissimantor si', 'DarkBlue', 10),
(18, 'L', 40.53, 63, 'esset glavans in in pladior', 'White', 8),
(19, 'XXXL', 331.05, 216, 'quo parte rarendum et', 'Aquamarine', 4),
(20, 'XXXXL', 125.53, 48, 'pladior plurissimum Id', 'LightSalmon', 10);


INSERT INTO shipment (shipid, ShipDate, ArrivalDate) VALUES
(1, '2006-12-09', '2007-01-29'),
(2, '2008-09-03', '2008-11-14'),
(3, '2001-03-07', '2001-04-08'),
(4, '1996-04-04', '1996-06-02'),
(5, '2002-06-03', '2002-07-07'),
(6, '1993-11-16', '1994-01-11'),
(7, '2005-06-20', '2005-08-18'),
(8, '2012-03-13', NULL),
(9, '2001-01-16', '2001-02-06'),
(10, '2001-03-09', '2001-04-19'),
(11, '1994-05-24', '1994-09-10'),
(12, '1993-10-13', '1993-12-02'),
(13, '2006-11-09', '2007-03-05'),
(14, '2011-01-09', '2011-03-17'),
(15, '2006-02-07', '2006-03-16');


INSERT INTO shipmentline (shipid, invid, slquantityOrdered, slquantityreceived) VALUES
(1, 8, 58, 2),
(2, 5, 42, 33),
(3, 2, 58, 1),
(3, 4, 28, 11),
(4, 3, 54, 41),
(5, 7, 37, 5),
(6, 9, 34, 3),
(7, 6, 23, 16),
(7, 10, 56, 22),
(8, 11, 61, 49),
(9, 13, 49, 40),
(10, 12, 1, 0),
(10, 14, 11, 0),
(10, 17, 8, 1),
(11, 1, 58, 37),
(11, 15, 1, 1),
(12, 18, 33, 16),
(13, 15, 2, 0),
(13, 16, 78, 23),
(13, 17, 34, 18),
(14, 20, 61, 16),
(15, 19, 35, 14);


INSERT INTO orderline (oid, invid, olquantity) VALUES
(1, 1, 7),
(1, 16, 21),
(2, 2, 6),
(2, 15, 21),
(3, 3, 3),
(3, 9, 23),
(4, 4, 8),
(4, 11, 18),
(4, 19, 27),
(5, 3, 10),
(5, 5, 20),
(5, 9, 2),
(6, 2, 10),
(6, 6, 10),
(7, 5, 21),
(7, 7, 18),
(7, 20, 21),
(8, 8, 21),
(8, 18, 12),
(9, 9, 16),
(9, 13, 11),
(10, 4, 1),
(10, 10, 18),
(10, 11, 24),
(11, 7, 17),
(11, 11, 24),
(11, 19, 8),
(12, 6, 11),
(12, 12, 1),
(13, 8, 18),
(13, 13, 3),
(14, 4, 3),
(14, 10, 14),
(14, 14, 9),
(15, 14, 27),
(15, 15, 2),
(15, 17, 8),
(16, 12, 1),
(16, 16, 16),
(17, 10, 14),
(17, 14, 7),
(17, 17, 13),
(18, 1, 24),
(18, 18, 17),
(19, 7, 24),
(19, 19, 13),
(19, 20, 19),
(20, 3, 14),
(20, 5, 2),
(20, 20, 16);




