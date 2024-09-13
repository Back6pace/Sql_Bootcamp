/*
    Write a SQL statement that returns a list of pizzerias with the corresponding rating value that have not been visited by people.
*/
SELECT z.name AS pizzeria_name, z.rating
FROM pizzeria z
LEFT JOIN person_visits ON z.id = person_visits.pizzeria_id
WHERE visit_date IS null