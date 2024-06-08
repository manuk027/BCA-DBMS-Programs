CREATE TABLE employee(
EmpID VARCHAR(5), 
EName VARCHAR(10), 
Salary INT, 
Department VARCHAR(15), 
Age INT
);
INSERT INTO employee VALUES
('E001', 'Raju', 50000, 'HR', 33), 
('E002', 'Sian', 12000, 'Purchase', 25), 
('E003', 'Hari', 33450, 'Administrative', 29), 
('E004', 'Athul', 12345, 'Office', 28),
('E005', 'Nandana', 51342, 'Sales', 49),
('E006', 'Meera', 48000, 'HR', 40);

(a)
SELECT COUNT(*) FROM employee;

(b)
SELECT EName, Age, Department FROM employee WHERE Age IN (SELECT MAX(Age) FROM employee GROUP BY Department);

(c)
SELECT Department, AVG(Age) FROM employee GROUP BY Department;

(d)
SELECT Department, AVG(Salary) FROM employee GROUP BY Department;

(e)
SELECT MIN(Salary) FROM employee;

(f)
SELECT COUNT(*) FROM employee WHERE Department='Purchase';

(g)
SELECT MAX(Salary) FROM employee WHERE Department='Sales';

(h)
SELECT MAX(Salary)-MIN(Salary) AS "differnce" FROM employee;
