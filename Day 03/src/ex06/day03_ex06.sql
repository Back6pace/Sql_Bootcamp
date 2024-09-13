/*
    Find the same pizza names that have the same price, but from different pizzerias. 
    Make sure that the result is ordered by pizza name. 
    The data sample is shown below. 
    Please make sure that your column names match the column names below.
*/

select m1.pizza_name, z1.name as pizzeria_name1, z2.name as pizzeria_name2, m1.price
from menu as m1
join menu as m2 on m2.price = m1.price
join pizzeria as z1 on z1.id = m1.pizzeria_id
join pizzeria as z2 on z2.id = m2.pizzeria_id
where m1.id > m2.id and m1.pizza_name = m2.pizza_name
order by 1