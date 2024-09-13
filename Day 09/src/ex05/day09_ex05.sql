DROP FUNCTION fnc_persons_female;
DROP FUNCTION fnc_persons_male;

CREATE OR REPLACE FUNCTION fnc_persons(IN pgender varchar default 'female') RETURNS TABLE (
    id bigint,
    name varchar,
    age integer,
    gender varchar,
    address varchar
) AS $$(SELECT * FROM person WHERE person.gender = pgender)$$ 
LANGUAGE sql;

select *
from fnc_persons(pgender := 'male');

select *
from fnc_persons();
