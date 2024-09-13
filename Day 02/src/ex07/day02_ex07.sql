/*
    Please find the name of the pizzeria Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.
*/

SELECT pizzeria.name
FROM person_visits
JOIN person ON person.id = person_visits.person_id
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Dmitriy' AND person_visits.visit_date = '2022-01-08' AND menu.price < 800
