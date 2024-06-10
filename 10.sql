CREATE OR REPLACE FUNCTION get_fibonacci(limit_val INTEGER)
RETURNS TABLE(fib_number INTEGER) AS
$$
DECLARE
a INTEGER := 0; 
b INTEGER := 1; 
temp INTEGER;
BEGIN
IF limit_val < 1 THEN
RAISE EXCEPTION 'Limit should be greater than or equal to 1'; 
END IF; 

RETURN QUERY SELECT a;

IF limit_val >= 2 THEN 
RETURN QUERY SELECT b;
END IF;

WHILE (a + b) <= limit_val LOOP 
temp := a + b;
RETURN QUERY SELECT temp; 
a := b;
b := temp;
END LOOP; 
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_fibonacci(100);
