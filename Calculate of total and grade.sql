CREATE TABLE student (
reg_no INT PRIMARY KEY,
name VARCHAR(10),
s1 INT,
s2 INT,
s3 INT,
s4 INT,
total INT,
average_score NUMERIC(5,2),
grade CHAR(5)
);

INSERT INTO student (reg_no, name, s1, s2, s3, s4, total, average_score, grade) VALUES
(1, 'Anu', 89, 78, 88, 78, NULL, NULL, NULL),
(2, 'Sinu', 89, 88, 88, 78, NULL, NULL, NULL),
(3, 'chinnu', 89, 78, 98, 78, NULL, NULL, NULL),
(4, 'minnnu', 89, 78, 88, 58, NULL, NULL, NULL),
(5, 'kunju', 29, 78, 88, 78, NULL, NULL, NULL);

DO $$
DECLARE
student_row RECORD;
BEGIN
FOR student_row IN (SELECT * FROM student) LOOP
student_row.total := student_row.s1 + student_row.s2 + student_row.s3 + student_row.s4;
student_row.average_score := student_row.total / 4.0;

IF student_row.average_score >= 90 THEN
student_row.grade := 'A';
ELSIF student_row.average_score >= 75 THEN
student_row.grade := 'B';
ELSIF student_row.average_score >= 60 THEN
student_row.grade := 'C';
ELSIF student_row.average_score >= 50 THEN
student_row.grade := 'D';
ELSE
student_row.grade := 'F';
END IF;
UPDATE student
SET total = student_row.total, average_score = student_row.average_score, grade = student_row.grade
WHERE reg_no = student_row.reg_no;
END LOOP;
END $$;
select * from student;
