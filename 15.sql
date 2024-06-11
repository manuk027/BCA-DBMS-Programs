CREATE TABLE fact_table (
number INT,
factorial NUMERIC(15)
);
CREATE OR REPLACE FUNCTION fact(n INT) RETURNS VOID AS $$
DECLARE
i INT;
x INT;
f NUMERIC(15);
BEGIN
TRUNCATE fact_table;
INSERT INTO fact_table VALUES (0, 1);
FOR i IN 1..n LOOP
f := 1;
x := i;
WHILE x > 0 LOOP
f := x * f;
x := x - 1;
END LOOP;
INSERT INTO fact_table VALUES (i, f);
END LOOP;
END;
$$ LANGUAGE PLPGSQL;
SELECT fact(10);
SELECT * FROM fact_table;
