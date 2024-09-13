/*
Write an SQL statement that returns unique pizza names from the menu table and sorts 
them by the pizza_name column in descending order. Please note the Denied section.
*/

select pizza_name from menu 

union

select pizza_name from menu

order by pizza_name desc