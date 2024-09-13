/*
    Find the names of all women who ordered both pepperoni and cheese pizzas (at any time and in any pizzerias). 
    Make sure that the result is ordered by person's name. 
    The sample data is shown below.
*/

select p.name
from person_order po
join person p on p.id = po.person_id
join menu m on m.id = po.menu_id
where m.pizza_name = 'pepperoni pizza' and p.gender = 'female'

intersect

select p.name
from person_order po
join person p on p.id = po.person_id
join menu m on m.id = po.menu_id
where m.pizza_name = 'cheese pizza' and p.gender = 'female'
order by 1