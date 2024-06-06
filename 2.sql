CREATE TABLE sale_man (
salesman_no VARCHAR(5), 
s_name VARCHAR(25) NOT NULL, 
place VARCHAR(30), 
phone VARCHAR(10) UNIQUE, 
PRIMARY KEY(salesman_no)
);

CREATE TABLE sales_order (
order_no VARCHAR(10),  
order_date DATE NOT NULL, 
salesman_no VARCHAR(5), 
del_type CHAR(1), 
order_status VARCHAR(10),
PRIMARY KEY(order_no),
FOREIGN KEY(salesman_no) REFERENCES sale_man(salesman_no), 
CHECK (del_type IN ('P', 'F')),
CHECK (order_status IN ('Inprocess', 'Fulfilled', 'Backorder', 'Cancelled'))
);

(a)
INSERT INTO sale_man VALUES('00001', 'Arjun', 'Mumbai', '8281337921');
INSERT INTO sale_man VALUES('00002', 'Ravi', 'Bengaluru', '8281337931');
INSERT INTO sale_man VALUES('00003', 'Sanjay', 'Jaipur', '8281337942');
INSERT INTO sale_man VALUES('00004', 'Rohit', 'Kolkata', '8281344921');
INSERT INTO sale_man VALUES('00005', 'Amit', 'Hyderabad', '8281338921');
INSERT INTO sales_order VALUES('001', '2024-01-01', '00001', 'P', 'Fulfilled');
INSERT INTO sales_order VALUES('002', '2024-02-03', '00002', 'P', 'Inprocess');
INSERT INTO sales_order VALUES('003', '2024-04-05', '00003', 'F', 'Cancelled');
INSERT INTO sales_order VALUES('004', '2024-06-07', '00004', 'P', 'Backorder');
INSERT INTO sales_order VALUES('005', '2024-08-09', '00005', 'F', 'Cancelled');
SELECT * FROM sale_man;
SELECT * FROM sales_order;

(c)
ALTER TABLE sales_order DROP CONSTRAINT sales_order_salesman_no_fkey;
ALTER TABLE sales_order DROP CONSTRAINT sales_order_del_type_check;
ALTER TABLE sales_order DROP CONSTRAINT sales_order_order_status_check;
\d sales_order;

(e)
ALTER TABLE sales_order ADD CONSTRAINT salesman FOREIGN KEY (salesman_no) REFERENCES sale_man(salesman_no);
ALTER TABLE sales_order ADD CONSTRAINT del_type CHECK (del_type IN ('P', 'F'));
ALTER TABLE sales_order ADD CONSTRAINT order_status CHECK (order_status IN ('Inprocess', 'Fulfilled', 'Backorder', 'Cancelled'));
\d sales_order;
