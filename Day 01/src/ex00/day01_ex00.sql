/*
Please write a SQL statement 
that returns the menu identifier and pizza names from the menu table and the person identifier 
and person name from the person table in one global list (with column names as shown in the example below) 
ordered by object_id and then by object_name columns.
*/

select menu.id as object_id, menu.pizza_name as object_name
from menu

union all

select person.id as object_id, person.name as object_name
from person

order by object_id, object_name