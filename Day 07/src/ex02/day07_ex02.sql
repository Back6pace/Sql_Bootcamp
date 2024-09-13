/*
    Please write a SQL statement to see 3 favorite restaurants by visits and 
    by orders in a list (please add an action_type column with values 'order' or 'visit', it depends on the data from the corresponding table). 
    Please have a look at the example data below. 
    The result should be sorted in ascending order by the action_type column and in descending order by the count column.
*/

with orders as (
    select z.name, count(po.order_date), 'order' as action_type
    from person_order as po
    join menu as m on m.id = po.menu_id
    join pizzeria as z on z.id = m.pizzeria_id
    GROUP BY z.name
    order by 2 desc
    limit 3
), visits as (
    select z.name, count(pv.visit_date), 'visit' as action_type
    from person_visits as pv
    join pizzeria as z on z.id = pv.pizzeria_id
    GROUP BY z.name
    order by 2 desc
    limit 3
)

select * from orders 

UNION ALL

select * from visits 

order by 3, 2 desc