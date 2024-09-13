CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson varchar default 'Dmitriy', 
IN pprice numeric default 500, 
IN pdate date default '2022-01-08') RETURNS TABLE (
    name varchar
) AS $$
    BEGIN
        RETURN QUERY
        SELECT pz.name 
        FROM person_visits pv
        JOIN person p ON p.id = pv.person_id
        JOIN pizzeria pz ON pv.pizzeria_id = pz.id
        JOIN menu m ON pz.id = m.pizzeria_id
        WHERE p.name = pperson
        AND pv.visit_date = pdate
        AND m.price < pprice;
    END
$$
LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
