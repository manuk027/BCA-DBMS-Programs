CREATE TABLE employee(
empid VARCHAR(5), 
ename VARCHAR(10), 
salary INT, 
department VARCHAR(15), 
age INT
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
SELECT ename, age, department FROM employee WHERE age IN (SELECT MAX(age) FROM employee GROUP BY department);

(c)
SELECT department,AVG(age) FROM employee GROUP BY department;

(d)
SELECT department,AVG(salary) FROM employee GROUP BY department;

(e)
SELECT MIN(salary) FROM employee;

(f)
SELECT COUNT(*) FROM employee WHERE department='Purchase';

(g)
SELECT MAX(salary) FROM employee WHERE department='Sales';

(h)
SELECT MAX(salary)-MIN(salary) AS "differnce" FROM employee;
