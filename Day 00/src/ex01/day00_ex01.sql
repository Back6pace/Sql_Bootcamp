/*
 Please make a select statement which returns names , ages for all women from the city ‘Kazan’. Yep, and please sort result by name.
 */
SELECT name,
    age
FROM person
WHERE person.address = 'Kazan'
    AND person.gender = 'female'
ORDER BY name