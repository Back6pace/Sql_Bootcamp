/*
    Please find pizzerias that have been visited more often by women or by men. 
    Save duplicates for any SQL operators with sets (UNION ALL, EXCEPT ALL, INTERSECT ALL constructions). 
    Please sort a result by the name of the pizzeria. 
    The sample data is shown below.
*/

(select z.name 
from person_visits as pv
join person as p on p.id = pv.person_id
join pizzeria as z on z.id = pv.pizzeria_id
where p.gender = 'female'
except all
select z.name 
from person_visits as pv
join person as p on p.id = pv.person_id
join pizzeria as z on z.id = pv.pizzeria_id
where p.gender = 'male')

union all 

(select z.name 
from person_visits as pv
join person as p on p.id = pv.person_id
join pizzeria as z on z.id = pv.pizzeria_id
where p.gender = 'male'
except all
select z.name 
from person_visits as pv
join person as p on p.id = pv.person_id
join pizzeria as z on z.id = pv.pizzeria_id
where p.gender = 'female')