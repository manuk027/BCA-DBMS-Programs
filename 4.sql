CREATE TABLE Bank_customer(accno VARCHAR(10), cust_name VARCHAR(15), place VARCHAR(25), PRIMARY KEY(accno));
CREATE TABLE Deposit(accno VARCHAR(10), deposit_no VARCHAR(10), damount INT, PRIMARY KEY(deposit_no), FOREIGN KEY(accno) REFERENCES Bank_customer(accno));
CREATE TABLE Loan(accno VARCHAR(10), loan_no VARCHAR(10), lamount INT, PRIMARY KEY(loan_no), FOREIGN KEY(accno) REFERENCES Bank_customer(accno));

INSERT INTO Bank_customer VALUES('AC001', 'Eleanor', 'Delhi');
INSERT INTO Bank_customer VALUES('AC002', 'Nathaniel', 'Mumbai');
INSERT INTO Bank_customer VALUES('AC003', 'Alexander', 'Bangalore');
INSERT INTO Bank_customer VALUES('AC004', 'Jack', 'Kochi');

INSERT INTO Deposit VALUES('AC001', 'D0001', 100000);
INSERT INTO Deposit VALUES('AC004', 'D0002', 150000);

INSERT INTO Loan VALUES('AC003', 'L0001', 170000);
INSERT INTO Loan VALUES('AC004', 'L0003', 1500000);
INSERT INTO Loan VALUES('AC002', 'L0004', 15000);

SELECT * FROM Bank_customer;
