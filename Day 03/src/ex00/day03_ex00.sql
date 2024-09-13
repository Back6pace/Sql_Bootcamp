/*
    Please write a SQL statement that returns a list of pizza names, pizza prices, pizzeria names, 
    and visit dates for Kate and for prices ranging from 800 to 1000 rubles. 
    Please sort by pizza, price, and pizzeria name. 
    See a sample of the data below.
*/

select m.pizza_name, m.price, z.name as pizzeria_name, pv.visit_date
from person_visits as pv
join pizzeria as z on z.id = pv.pizzeria_id
join menu as m on m.pizzeria_id = z.id
join person as p on p.id = pv.person_id
where p.name = 'Kate' and m.price between 800 and 1000
order by 1, 2, 3
