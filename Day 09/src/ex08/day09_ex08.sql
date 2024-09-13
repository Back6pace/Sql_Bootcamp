CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10) 
RETURNS TABLE(fib_number integer) AS $$
DECLARE
    current_num integer := 0;
    next_num integer := 1;
    temp integer;
BEGIN
    IF pstop > 0 THEN
        RETURN QUERY SELECT current_num;
    END IF;

    WHILE next_num < pstop LOOP
        RETURN QUERY SELECT next_num;
        temp := current_num;
        current_num := next_num;
        next_num := temp + next_num;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
