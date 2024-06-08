DO $$
DECLARE
r INTEGER;
ar NUMERIC(10, 2);
p1 CONSTANT FLOAT:=3.14;
BEGIN
CREATE TABLE areas(radius integer, area numeric);
r:=3;
WHILE r<7
LOOP
ar:=p1*POWER(r, 2);
INSERT INTO areas VALUES(r, ar);
r=r+1;
END LOOP;
END $$;
SELECT * FROM areas;
