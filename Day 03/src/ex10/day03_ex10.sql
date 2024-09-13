/*
    Please register new orders from Denis and Irina on February 24, 2022 for the new menu with "sicilian pizza".
*/

INSERT INTO person_order (id, person_id, menu_id, order_date)
values ((select max(id) +1 from person_order), (select id from person where name = 'Denis'), (select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24'),
((select max(id) +2 from person_order), (select id from person where name = 'Irina'), (select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24')