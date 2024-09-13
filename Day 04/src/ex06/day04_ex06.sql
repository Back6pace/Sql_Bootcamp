/*
    Please create a Materialized View mv_dmitriy_visits_and_eats (with data included) 
    based on the SQL statement that finds the name of the pizzeria where Dmitriy visited 
    on January 8, 2022 and could eat pizzas for less than 800 rubles (this SQL can be found at Day #02 Exercise #07).
    To check yourself, you can write SQL to the Materialized View mv_dmitriy_visits_and_eats and compare the results with your previous query.
*/

CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT z.name
FROM person_visits as pv
JOIN person as p ON p.id = pv.person_id
JOIN pizzeria as z ON z.id = pv.pizzeria_id
JOIN menu as m ON m.pizzeria_id = z.id
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800

