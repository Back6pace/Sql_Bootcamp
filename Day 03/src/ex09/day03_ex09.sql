/*
    Please record new visits to Domino's restaurant by Denis and Irina on February 24, 2022.
*/

INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
values ((select max(id) +1 from person_visits), (select id from person where name = 'Denis'), (select id from pizzeria where name = 'Dominos'), '2022-02-24'),
((select max(id) +2 from person_visits), (select id from person where name = 'Irina'), (select id from pizzeria where name = 'Dominos'), '2022-02-24')