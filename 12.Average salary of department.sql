CREATE TABLE emp_salary (
    emp_no INT PRIMARY KEY,
    ename VARCHAR(10),
    dept VARCHAR(10),
    salary INT
);
INSERT INTO emp_salary VALUES
(1, 'Anu', 'Sales', 10000),
(2, 'Devika', 'HR', 20000),
(3, 'Megha', 'IT', 30000),
(4, 'Afsana', 'HR', 40000),
(5, 'Anju', 'Sales', 50000),
(6, 'Vinu', 'IT', 60000);
select * from emp_salary;
CREATE OR REPLACE FUNCTION sal_cal(d VARCHAR)
RETURNS NUMERIC AS $$
DECLARE
    av NUMERIC;
    cur CURSOR FOR SELECT ROUND(AVG(salary)) FROM emp_salary WHERE dept = d;
BEGIN
    OPEN cur;
    FETCH cur INTO av;
    CLOSE cur;
    RETURN av;
END;
$$ LANGUAGE plpgsql;
SELECT sal_cal('IT') as avg_sal;
