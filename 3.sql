CREATE TABLE Hospital(doctorid VARCHAR(5), docatorname VARCHAR(25), department VARCHAR(15), qualification VARCHAR(10), experience INT);

(a)
INSERT INTO Hospital VALUES('D001', 'Eleanor', 'Skin', 'MBBS', 5);
INSERT INTO Hospital VALUES('D002', 'Nathaniel', 'Bone', 'MBBS', 4);
INSERT INTO Hospital VALUES('D003', 'Isabella', 'Eyes', 'MD', 3);
INSERT INTO Hospital VALUES('D004', 'Alexander', 'Heart', 'DO', 7);
INSERT INTO Hospital VALUES('D005', 'Sophia', 'Skin', 'MD', 11);

(b)
SELECT * FROM Hospital;

(c)
SELECT * FROM Hospital WHERE qualification='MD';

(d)
SELECT * FROM Hospital WHERE experience > 5 AND qualification != 'MD';

(e)
SELECT * FROM Hospital WHERE department = 'Skin';

(f)
UPDATE Hospital SET experience = 5 WHERE doctorid = 'D003';
SELECT * FROM Hospital;

(g)
DELETE FROM Hospital WHERE doctorid = 'D005';
SELECT * FROM Hospital;
