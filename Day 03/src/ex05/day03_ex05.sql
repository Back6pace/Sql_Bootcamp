/*
    Write an SQL statement that returns a list of pizzerias that Andrey visited but did not order from. 
    Please order by the name of the pizzeria. 
    The sample data is shown below.
*/

with andrey_vis as (
	select z.name 
	from person_visits as pv
	join pizzeria as z on z.id = pv.pizzeria_id
	join person as p on p.id = pv.person_id
	where p.name = 'Andrey'
), andrey_order as (
	select z.name
	from person_order as po
	join person as p on p.id = po.person_id
	join menu as m on m.id = po.menu_id
	join pizzeria as z on z.id = m.pizzeria_id
	where p.name = 'Andrey'
)
select name from andrey_vis
except
select name from andrey_order
order by 1