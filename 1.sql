CREATE TABLE customer(
cust_no varchar(5),
cust_name varchar(15),
age int,
phone varchar(10),
PRIMARY KEY(cust_no)
);

(a)
INSERT INTO customer(cust_no, cust_name, age, phone) VALUES('A0001', 'Liam', 21, '8281337921');
INSERT INTO customer(cust_no, cust_name, age, phone) VALUES('A0002', 'Sofia', 23, '8281337931');
INSERT INTO customer(cust_no, cust_name, age, phone) VALUES('A0003', 'Ethan', 22, '8281337942');
INSERT INTO customer(cust_no, cust_name, age, phone) VALUES('A0004', 'Isabella', 21, '8281344921');
INSERT INTO customer(cust_no, cust_name, age, phone) VALUES('A0005', 'Noah', 20, '8281338921');
SELECT * FROM customer;

(b)
ALTER TABLE customer ADD COLUMN d_birth date;
SELECT * FROM customer;

(c)
CREATE TABLE cust_phone AS SELECT cust_name, phone FROM customer;
SELECT * FROM cust_phone;

(d)
ALTER TABLE customer DROP COLUMN age;
SELECT * FROM customer;

(e)
ALTER TABLE customer MODIFY COLUMN cust_name  varchar(25);
SELECT * FROM customer;

(f)
DELETE FROM customer;
SELECT * FROM customer;

(g)
ALTER TABLE customer RENAME  TO cust;
SELECT * FROM cust;

(h)
DROP TABLE cust;
