CREATE TABLE emp_salary (
empno VARCHAR(5),
ename VARCHAR(10),
dept VARCHAR(7), 
salary INT);
INSERT INTO emp_salary VALUES('101','Arun', 'Sales', 10000);
INSERT INTO emp_salary VALUES('102', 'Amal', 'HR', 15000);
INSERT INTO emp_salary VALUES('103', 'Arya', 'Sales', 2000);
INSERT INTO emp_salary VALUES('104', 'Sandra', 'HR', 13000);
INSERT INTO emp_salary VALUES('105', 'Anil', 'Sales', 14000);
CREATE OR REPLACE FUNCTION avg_sal_sales() RETURNS INTEGER AS $$
DECLARE
avg_salary INTEGER;
BEGIN
SELECT AVG(salary) INTO avg_salary FROM emp_salary WHERE dept = 'Sales';
RETURN avg_salary;
END;
$$ LANGUAGE PLPGSQL;
SELECT avg_sal_sales();
