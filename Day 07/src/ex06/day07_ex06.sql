/*
    Please write a SQL statement that returns the number of orders, the average price, 
    the maximum price and the minimum price for pizzas sold by each pizzeria restaurant. 
    The result should be sorted by pizzeria name. See the sample data below.
    Round the average price to 2 floating numbers.
*/

with cnt_orders as (
    select count(po.order_date) as cnt, z.name
    from person_order AS po
    join menu as m on m.id = po.menu_id
    join pizzeria AS z on z.id = m.pizzeria_id
    GROUP BY z.name
)

select z.name, co.cnt, round(avg(m.price), 2) as avg_price, max(m.price) as max_price, min(m.price) as min_price
from person_order AS po
join menu as m on m.id = po.menu_id
join pizzeria AS z on z.id = m.pizzeria_id
join cnt_orders as co on co.name = z.name
GROUP BY z.name, co.cnt
ORDER BY z.name