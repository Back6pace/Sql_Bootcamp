/*
Please modify an SQL statement from "Exercise 00" by removing the object_id column. 
Then change the order by object_name for part of the data from the person table and then 
from the menu table (as shown in an example below). Please save duplicates!
*/

select person.name as object_name
from person

union all

select menu.pizza_name as object_name
from menu

order by object_name