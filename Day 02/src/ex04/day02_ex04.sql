/*
    Find complete information about all possible pizzeria names and prices to get mushroom or pepperoni pizza. 
    Then sort the result by pizza name and pizzeria name. 
    The result of the sample data is shown below (please use the same column names in your SQL statement).
*/

SELECT menu.pizza_name, pizzeria.name AS pizzeria_name, menu.price
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY 1, 2