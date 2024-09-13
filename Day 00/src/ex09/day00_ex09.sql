/*
Please make a select statement that returns person names and pizzeria names based on the person_visits 
table with a visit date in a period from January 07 to January 09, 2022 (including all days) (based on an internal query in the `FROM' clause).
Please take a look at the pattern of the final query.

SELECT (...) AS person_name ,  -- this is an internal query in a main SELECT clause
        (...) AS pizzeria_name  -- this is an internal query in a main SELECT clause
FROM (SELECT … FROM person_visits WHERE …) AS pv -- this is an internal query in a main FROM clause
ORDER BY ...


Please add a ordering clause by person name in ascending mode and by pizzeria name in descending mode.
*/

select 
	(select p.name 
	 from person p
	 where p.id = pv.person_id) as person_names, 
	(select z.name 
	 from pizzeria z
	 where z.id = pv.pizzeria_id) as pizzeria_names
from (select person_id, pizzeria_id, visit_date 
	  from person_visits
	  where visit_date between '2022-01-07' and '2022-01-09') as pv
order by person_names asc, pizzeria_names desc