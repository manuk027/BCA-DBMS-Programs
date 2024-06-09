
CREATE TABLE EMPLOYEE(
    Employee_Name VARCHAR(20),
    City VARCHAR(20)
);

CREATE TABLE WORKS(
    Employee_Name VARCHAR(20), 
    Company_Name VARCHAR(20), 
    Salary INT
); 

CREATE TABLE COMPANY(
    Company_Name VARCHAR(20), 
    City VARCHAR(20)
); 

CREATE TABLE MANAGER(
    Employee_Name VARCHAR(10), 
    Manager_Name VARCHAR(10)
);

INSERT INTO EMPLOYEE VALUES
('Anu', 'Thrissur'),
('Aravind', 'Kochi'),
('Jai', 'Pune'),
('Devikha', 'Chennai'),
('Keerthi', 'Delhi'); 

INSERT INTO WORKS VALUES
('Anu', 'Infosys', 9000), 
('Aravind', 'TCS', 18000),
('Jai', 'Infosys', 8000),
('Devikha', 'Wipro', 8000),
('Keerthi', 'Infosys', 23000); 

INSERT INTO COMPANY VALUES
('Infosys', 'Thrissur'), 
('Wipro', 'Pune'),
('TCS', 'Kochi'); 

INSERT INTO MANAGER VALUES
('Anu', 'Keerthi'), 
('Jai', 'Devikha'); 

SELECT * FROM EMPLOYEE;
SELECT * FROM WORKS;
SELECT * FROM COMPANY;
SELECT * FROM MANAGER;


SELECT EMPLOYEE.Employee_Name, EMPLOYEE.City
FROM EMPLOYEE
JOIN WORKS ON EMPLOYEE.Employee_Name = WORKS.Employee_Name
WHERE WORKS.Company_Name = 'Wipro';

SELECT EMPLOYEE.Employee_Name, EMPLOYEE.City
FROM EMPLOYEE
JOIN WORKS ON EMPLOYEE.Employee_Name = WORKS.Employee_Name
WHERE WORKS.Company_Name = 'Infosys' AND WORKS.Salary > 10000;

SELECT EMPLOYEE.Employee_Name, EMPLOYEE.City
FROM EMPLOYEE
JOIN WORKS ON EMPLOYEE.Employee_Name = WORKS.Employee_Name
JOIN COMPANY ON WORKS.Company_Name = COMPANY.Company_Name
WHERE EMPLOYEE.City = COMPANY.City;

SELECT EMPLOYEE.Employee_Name, EMPLOYEE.City
FROM EMPLOYEE
JOIN WORKS ON EMPLOYEE.Employee_Name = WORKS.Employee_Name
WHERE WORKS.Company_Name <> 'Wipro';

SELECT Company_Name
FROM WORKS
GROUP BY Company_Name
ORDER BY COUNT(Employee_Name) DESC
FETCH FIRST 1 ROWS ONLY;
