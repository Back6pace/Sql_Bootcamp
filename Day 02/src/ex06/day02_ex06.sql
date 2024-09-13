/*
    Find all pizza names (and corresponding pizzeria names using the menu table) ordered by Denis or Anna. 
    Sort a result by both columns. 
    The sample output is shown below.
*/

select menu.pizza_name, pizzeria.name as pizzeria_name
from person_order
join menu on menu.id = person_order.menu_id
join pizzeria on pizzeria.id = menu.pizzeria_id
join person on person.id = person_order.person_id
where person.name in ('Denis', 'Anna')
order by 1, 2
