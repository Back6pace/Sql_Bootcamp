/*
    Please find the names of all men from Moscow or Samara who order either pepperoni or mushroom pizza (or both). 
    Please sort the result by person names in descending order. The sample output is shown below.
*/

SELECT p.name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
WHERE p.address IN ('Samara', 'Moscow') AND m.pizza_name IN ('pepperoni pizza', 'mushroom pizza') AND p.gender = 'male'
ORDER BY 1 DESC