/*
    Before proceeding, please write an SQL statement that returns pizzas and the corresponding pizzeria names. 
    See the example result below (no sorting required).
*/

SET enable_seqscan to off;
EXPLAIN ANALYZE

select m.pizza_name, z.name as pizzeria_name
from menu m
join pizzeria as z on z.id = m.pizzeria_id