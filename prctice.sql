create database moiz_2;
use moiz_2;
CREATE TABLE Products (
	PID int,  ProductsName varchar(50),  Price int,  MFGDate varchar(11),
  ExpiryDate varchar(11), Quantity int,  Packing varchar(25)
);

INSERT INTO Products VALUES (200, 'Tapal Danedaar 100 gms'    ,120 , '10-JAN-2016' , '10-JUN-2017' , 80 , 'Box Pack');
INSERT INTO Products VALUES (201, 'Lipton Tea 150 gms'        ,110 , '15-FEB-2016' , '15-JUL-2016' , 75 , 'Box Pack');
INSERT INTO Products VALUES (202, 'Falak Rice 5 kg'           ,600 , '20-MAR-2016' , '20-AUG-2016' , 30 , 'Box Pack');
INSERT INTO Products VALUES (203, 'Nido Milk Powder 800 gms'  ,550 , '25-APR-2016' , '25-SEP-2016' , 25 , 'Pet Bottle');
INSERT INTO Products VALUES (204, 'Maggie Noodles 25 gms'     ,25  , '30-MAY-2016' , '30-OCT-2016' , 55 , 'Packet');
INSERT INTO Products VALUES (205, 'Fine Sugar 5 kg'           ,250 , '31-JUN-2016' , '31-NOV-2016' , 58 , 'Packet');
INSERT INTO Products VALUES (206, 'Rooh Afza 300 gms'         ,220 , '26-JUN-2016' , '28-NOV-2016' , 25 , 'Glass Bottle');
INSERT INTO Products VALUES (207, 'Michelles Ketchup 300 gms' ,150 , '30-MAY-2016' , '30-OCT-2016' , 10 , 'Packet');
INSERT INTO Products VALUES (208, 'Nestle Milk Pack 250 gms'  ,30  , '05-JAN-2016' , '28-JAN-2016' , 15 , 'Packet');
INSERT INTO Products VALUES (209, 'National Achar 300 gms'    ,150 , '08-JUL-2016' , '08-JUN-2017' , 6  , 'Glass Bottle');
INSERT INTO Products VALUES (210, 'Nestle Milk Pack 500 gms'  ,60  , '06-FEB-2016' , '28-JUN-2016' , 18 , 'Packet') ;
INSERT INTO Products VALUES (211, 'Sheezan Ketchup 500 gms'   ,110 , '07-SEP-2016' , '07-SEP-2017' , 8  , 'Pet Bottle') ;
INSERT INTO Products VALUES (212, 'Nestle Milk Pack 1000 gms' ,120 , '07-MAR-2016' , '29-MAR-2016' , 17 , 'Packet');

select*from Products;

select * from Products
where quantity>70 and expirydate like '%2016';

select * from Products
where MFGDate like '%jun%' and ExpiryDate like '%nov%';

select count (packing)
from Products;

select sum(price) , AVG(price)
from Products;

select min(price) , max(price)
from Products where Price>100;

alter table products;
rename column to practice;



SELECT CHAR(13); SELECT "Question 1:";
SELECT * FROM Products WHERE Packing='Box Pack';
SELECT CHAR(13); SELECT "Question 2:";
SELECT * FROM Products WHERE Packing='Packet' OR Packing='Glass Bottle';
SELECT CHAR(13); SELECT "Question 3:";
SELECT * FROM Products WHERE Quantity>10 AND Quantity<50;
SELECT CHAR(13); SELECT "Question 4:";
SELECT * FROM Products WHERE ExpiryDate LIKE '%JUN%';
SELECT CHAR(13); SELECT "Question 5:";
SELECT * FROM Products WHERE ExpiryDate LIKE '%2017';
SELECT CHAR(13); SELECT "Question 6:";
SELECT * FROM Products WHERE ProductsName LIKE '%300 gms';
SELECT CHAR(13); SELECT "Question 7:";
SELECT * FROM Products WHERE Quantity>70 AND ExpiryDate LIKE '%2016';
SELECT CHAR(13); SELECT "Question 8:";
SELECT * FROM Products WHERE MFGDate LIKE '%JUN%' AND ExpiryDate LIKE '%NOV%';
SELECT CHAR(13); SELECT "END";
show databases;
show tables;