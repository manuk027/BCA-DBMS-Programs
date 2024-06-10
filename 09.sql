CREATE TABLE electricitybill(
    cust_no VARCHAR(8) PRIMARY KEY,
    cust_name VARCHAR(20), 
    units_consumed INT
); 

INSERT INTO electricitybill VALUES
('CO1', 'Ajay', 45),
('C02', 'Amith', 65),
('C03', 'Rijo', 25),
('C04', 'Devdhathan', 85); 

SELECT * FROM electricitybill;

CREATE OR REPLACE FUNCTION ebill(c_no VARCHAR(8), units INT) RETURNS INTEGER AS $$
DECLARE
amt INTEGER; 
used INTEGER;
BEGIN
IF units <= 40 THEN 
amt := 20;
ELSIF units > 40 AND units <= 80 THEN 
used := units - 40; 
amt := 20 + (used * 0.40);
ELSE 
used := units - 80; 
amt := 20 + (40 * 0.40) + (used * 1.40);
END IF;
RETURN amt;
END;
$$ LANGUAGE plpgsql;

SELECT ebill('CO1', 45);
