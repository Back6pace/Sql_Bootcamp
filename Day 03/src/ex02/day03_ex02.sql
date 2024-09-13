/*
    Please use the SQL statement from Exercise #01 and display the names of pizzas 
    from the pizzeria that no one has ordered, including the corresponding prices. 
    The result should be sorted by pizza name and price. 
    The sample output data is shown below.
*/

with cte as (
select id as menu_id from menu
where not exists (
	select 1 from person_order where menu_id = menu.id
))
select menu.pizza_name, menu.price, z.name
from menu
join pizzeria as z on z.id = menu.pizzeria_id
join cte on menu.id = cte.menu_id
order by 1, 2