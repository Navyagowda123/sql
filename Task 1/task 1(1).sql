CREATE DATABASE CUSTOMER;

USE CUSTOMER;

CREATE TABLE customer_details( cust_id int,cust_fname varchar(25),cust_lname varchar(25),city varchar(20), phno bigint);

ALTER TABLE customer_details ADD COLUMN email varchar(30);
ALTER TABLE customer_details ADD COLUMN orderno varchar(20);
ALTER TABLE customer_details ADD COLUMN orderdate date;
ALTER TABLE customer_details ADD COLUMN amount int;
ALTER TABLE customer_details ADD COLUMN state varchar(30);

SELECT * FROM customer_details;
DESC customer_details;

ALTER TABLE customer_details DROP COLUMN state, DROP COLUMN orderdate; 

ALTER TABLE customer_details RENAME COLUMN  city TO address;
ALTER TABLE customer_details RENAME COLUMN  email TO mail;
ALTER TABLE customer_details RENAME COLUMN  cust_lname TO c_last_name ;
ALTER TABLE customer_details RENAME COLUMN  cust_fname TO c_first_name;

ALTER TABLE customer_details MODIFY COLUMN  orderno int;
ALTER TABLE customer_details MODIFY COLUMN  amount bigint;


INSERT INTO customer_details values(1,'Ram','A','Shimoga',9986658363,'a@gmail.com',10,20000);
INSERT INTO customer_details values(2,'Raj','B','Banglore',9986658363,'b@gmail.com',5,1000);
INSERT INTO customer_details values(3,'Seetha','C','Mysore',9986658363,'c@gmail.com',7,4000);
INSERT INTO customer_details values(4,'Mala','D','Banglore',9986658363,'d@gmail.com',2,500);
INSERT INTO customer_details values(5,'Joy','D','Manglore',9986658363,'e@gmail.com',1,200);
INSERT INTO customer_details values(6,'Bhem','E','Manipal',9986658363,'f@gmail.com',5,1200);
INSERT INTO customer_details values(7,'Geetha','F','CKM',9986658363,'g@gmail.com',3,3000);
INSERT INTO customer_details values(8,'Gowri','G','Udupi',9986658363,'h@gmail.com',8,25000);
INSERT INTO customer_details values(9,'Putta','H','Shimoga',9986658363,'g@gmail.com',0,0000);
INSERT INTO customer_details values(10,'Putti','I','Bhadravathi',9986658363,'i@gmail.com',4,1800);






