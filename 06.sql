CREATE TABLE product(
Product_code VARCHAR(10), 
Product_Name VARCHAR(10), 
Category VARCHAR(15), 
Quantity INT, 
Price INT
);

INSERT INTO product VALUES('PBS01', 'Santoor', 'Bath Soap', 125, 37),
('PP01', 'Colgate', 'Paste', 90, 70),
('PBS02', 'Cinthol', 'Bath Soap', 75, 55),
('PWP01', 'Surf Exel', 'Washing Powder', 775, 140),
('PP02', 'Sensodyne', 'Paste', 120, 150),
('PS01', 'Sun Silk', 'Shampoo', 55, 135);

(a)
SELECT * FROM product
ORDER BY Product_Name DESC;

(b)
SELECT Product_code, Product_Name
FROM product
WHERE Price BETWEEN 20 AND 50;

(c)
SELECT *
FROM product
WHERE Category IN ('Bath Soap', 'Paste', 'Washing Powder');

(d)
SELECT Product_Name
FROM product
WHERE Quantity < 100 OR Quantity > 500;

(e)
SELECT Product_Name
FROM product
WHERE Product_Name LIKE 'S%';

(f)
SELECT Product_Name
FROM product
WHERE Category = 'Paste';

(g)
SELECT Product_Name
FROM product
WHERE Category = 'Washing Powder'
AND SUBSTR(Product_Name, 2, 1) = 'u';
