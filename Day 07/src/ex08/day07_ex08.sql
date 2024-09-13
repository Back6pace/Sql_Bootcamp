/*
    We know personal addresses from our data. Let's assume that this person only visits pizzerias in his city. 
    Write a SQL statement that returns the address, the name of the pizzeria, and the amount of the person's orders. 
    The result should be sorted by address and then by restaurant name. Please take a look at the sample output data below.
*/

select p.address, z.name, count(*) as count_of_orders
from person_order as po 
join person as p on p.id = po.person_id
join menu as m on m.id = po.menu_id
join pizzeria as z on z.id = m.pizzeria_id
group by p.address, z.name
order by 1, 2
