/*
    Let's refresh the data in our Materialized View mv_dmitriy_visits_and_eats from Exercise #06.
     Before this action, please create another Dmitriy visit that satisfies the SQL clause of the 
     Materialized View except pizzeria, which we can see in a result from Exercise #06.
    After adding a new visit, please update a data state for mv_dmitriy_visits_and_eats.
*/

insert into person_visits
values(
	(select max(id)+1 from person_visits), 
	(select id from person where name = 'Dmitriy'),
	(select z.id from pizzeria as z 
	join menu as m on m.pizzeria_id = z.id
	where m.price < 800 and m.pizza_name != 'Papa Johns' limit 1),
	'2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;