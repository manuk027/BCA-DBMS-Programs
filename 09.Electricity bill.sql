CREATE TABLE bill (
cust_no INT PRIMARY KEY,
cust_name VARCHAR(10),
units_consumed INT,
amount NUMERIC
);
INSERT INTO bill VALUES
(1, 'Smitha', 250, NULL),
(2, 'Smith', 50, NULL),
(3, 'Mitha', 150, NULL),
(4, 'Maneesh', 100, NULL),
(5, 'Meera', 250, NULL);
CREATE OR REPLACE FUNCTION bill_call()
RETURNS VOID AS $$
DECLARE
cust_no INT;
units_consumed INT;
amount NUMERIC;
cur CURSOR FOR SELECT cust_no, units_consumed FROM bill;
BEGIN
OPEN cur;
LOOP
FETCH cur INTO cust_no, units_consumed;
EXIT WHEN NOT FOUND;
amount := units_consumed * 3;
UPDATE bill SET amount = amount WHERE cust_no = cust_no;
END LOOP;
CLOSE cur;
END;
$$ LANGUAGE plpgsql;
SELECT bill_call();
SELECT * FROM bill;

