/*
Write 2 SQL statements that return a list of pizzerias that have not been visited by people using IN for the first and EXISTS for the second.
*/

-- select z.name from pizzeria z
-- where z.id not in (select pizzeria_id from person_visits);

-- select z.name from pizzeria z
-- where not exists (
--     select 1
-- 	from person_visits pv
-- 	where pv.pizzeria_id = z.id
-- )
