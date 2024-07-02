CREATE OR REPLACE FUNCTION print_fibonacci(limit_val INTEGER)
RETURNS VOID AS $$
DECLARE
a INTEGER := 0;
b INTEGER := 1;
temp INTEGER;
BEGIN
IF limit_val < 1 THEN
RAISE EXCEPTION 'limit should be greater than or equal to one';
END IF;
RAISE NOTICE '%', a;
IF limit_val >= 2 THEN
RAISE NOTICE '%', b;
END IF;
WHILE (a + b) <= limit_val LOOP
temp := a + b;
RAISE NOTICE '%', temp;
a := b;
b := temp;
END LOOP;
END;
$$ LANGUAGE plpgsql;
select print_fibonacci(100);
