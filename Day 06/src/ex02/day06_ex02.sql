/*
    Write a SQL statement that returns the orders with actual price and price with discount applied for each person 
    in the corresponding pizzeria restaurant, sorted by person name and pizza name. Please see the sample data below.
*/

select DISTINCT p.name, m.pizza_name, m.price, 
round(m.price - m.price * pd.discount / 100) as price_with_discount, z.name as pizzaria_name
from person_order as po
join menu as m on m.id = po.menu_id
join person as p on p.id = po.person_id
join person_discounts as pd on pd.person_id = p.id
join pizzeria as z on z.id = pd.pizzeria_id
order by p.name, m.pizza_name