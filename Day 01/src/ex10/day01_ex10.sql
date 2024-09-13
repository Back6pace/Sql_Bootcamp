/*
Please write an SQL statement that returns a list of the names of the people who ordered pizza from the corresponding pizzeria.
The sample result (with named columns) is provided below and yes ... please make the ordering by 3 columns 
(person_name, pizza_name, pizzeria_name) in ascending mode.
*/

select person.name, menu.pizza_name, pizzeria.name
from person_order
join person on person.id = person_order.person_id
join menu on menu.id = person_order.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id
order by person.name, menu.pizza_name, pizzeria.name