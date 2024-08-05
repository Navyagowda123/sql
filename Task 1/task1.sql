CREATE DATABASE bank_account;

USE bank_account;

CREATE TABLE bank_details(id int,holdername varchar(25),phoneno bigint,addresss varchar(20),branchname varchar(20));

ALTER TABLE bank_details ADD COLUMN IFSCCode varchar(10);
ALTER TABLE bank_details ADD COLUMN acctype varchar(20);
ALTER TABLE bank_details ADD COLUMN balance bigint;
ALTER TABLE bank_details ADD COLUMN nominename varchar(20);
ALTER TABLE bank_details ADD COLUMN adharno bigint;

SELECT * FROM bank_details;
DESC bank_details;

ALTER TABLE bank_details DROP COLUMN balance, DROP COLUMN nominename; 

ALTER TABLE bank_details RENAME COLUMN  phoneno TO numb;
ALTER TABLE bank_details RENAME COLUMN  acctype TO typeofaccount;
ALTER TABLE bank_details RENAME COLUMN  addresss TO useraddress ;
ALTER TABLE bank_details RENAME COLUMN  adharno TO  panno;

ALTER TABLE bank_details MODIFY COLUMN  IFSCCode bigint;
ALTER TABLE bank_details MODIFY COLUMN  panno varchar(20);

SELECT * FROM bank_details;

INSERT INTO bank_details values(1,'Ram',9986658363,'Shimoga','RR nagar',1234567,'deposite','ABCD123');
INSERT INTO bank_details values(2,'Raj',9986658363,'Banglore','Smg',3456789,'savings','MNOP098');
INSERT INTO bank_details values(3,'Seetha',9986658363,'Mysore','KR nagar',0987765,'current','XYZ4567');
INSERT INTO bank_details values(4,'Mala',9986658363,'Banglore','Tp colony',8766543,'current','POMN8765');
INSERT INTO bank_details values(5,'Joy',9986658363,'Manglore','Lbs nagar',1234567,'deposite','CDEF5674');
INSERT INTO bank_details values(6,'Bhem',9986658363,'Manipal','RT nagar',9876654,'salary','UVWX2309');
INSERT INTO bank_details values(7,'Geetha',9986658363,'CKM','vijaynagar',438912,'fixed','POSA8054');
INSERT INTO bank_details values(8,'Gowri',9986658363,'Udupi','RRR nagar',6543217,'savings','GHIJ2323');
INSERT INTO bank_details values(9,'Putta',9986658363,'Shimoga','West road',9876532,'salary','QRST70965');
INSERT INTO bank_details values(10,'Putti',9986658363,'Bhadravathi','MG road',345890,'fixed','TUVW2541');

SELECT  holdername FROM bank_details;

SELECT  * FROM bank_details where useraddress='Banglore' ;
SELECT  * FROM bank_details where id=5;

SELECT  * FROM bank_details where panno='ABCD123' AND holdername ='Joy';
SELECT  * FROM bank_details where branchname='smg' AND id=2;

SELECT  * FROM bank_details where id=3 OR holdername ='Seetha' OR panno='XYZ4567';

SELECT  * FROM bank_details where id IN(1,4,2);
SELECT  * FROM bank_details where id IN(1,4,2,'Gowri');

SELECT  * FROM bank_details where id between 5 and 9;
SELECT  * FROM bank_details where holdername between 'a'and 'm';

SELECT LOWER (holdername) FROM bank_details;
SELECT UPPER (holdername) FROM bank_details;
SELECT concat(id,holdername,panno) FROM bank_details;













