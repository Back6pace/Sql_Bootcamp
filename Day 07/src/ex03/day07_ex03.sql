/*
    Write an SQL statement to see how restaurants are grouped by visits and by orders, and joined together by restaurant name.
    You can use the internal SQL from Exercise 02 (Restaurants by Visits and by Orders) without any restrictions on the number of rows.
    In addition, add the following rules.

    Compute a sum of orders and visits for the corresponding pizzeria (note that not all pizzeria keys are represented in both tables).
    Sort the results by the total_count column in descending order and by the name column in ascending order.
    Take a look at the example data below.
*/

with orders as (
    select z.name, count(*) as cnt, 'order' as action_type
    from person_order as po
    join menu as m on m.id = po.menu_id
    join pizzeria as z on z.id = m.pizzeria_id
    GROUP BY z.name
), visits as (
    select z.name, count(*)as cnt, 'visit' as action_type
    from person_visits as pv
    join pizzeria as z on z.id = pv.pizzeria_id
    GROUP BY z.name
)

select visits.name, (visits.cnt + orders.cnt) as total_count
from visits
left join orders on orders.name = visits.name
order by 2 desc, 1