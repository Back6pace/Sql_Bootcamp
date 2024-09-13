/*
    Please register new orders of all persons for "greek pizza" on February 25, 2022.
*/

insert into person_order (id, person_id, menu_id, order_date)
values(
	generate_series((select max(id) + 1 from person_order), 
					(select max(id) + (select max(id) from person) from person_order), 1), 
	generate_series((select min(id) from person), (select max(id) from person), 1),
	(select id from menu where pizza_name = 'greek pizza'),
	'2022-02-25'
);
