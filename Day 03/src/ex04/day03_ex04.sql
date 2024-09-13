/*
    1) Find a union of pizzerias that have orders from either women or men. 
    2) In other words, you should find a set of names of pizzerias that have been 
    ordered only by women and make "UNION" operation with set of names of pizzerias that have been ordered only by men. 
    3) Please be careful with word "only" for both genders. For all SQL operators with sets don't store duplicates (UNION, EXCEPT, INTERSECT).  
    4) Please sort a result by the name of the pizzeria. 
    The sample data is shown below.
*/


with male_order as (
	select pizzeria.name from person_order
	join person on person.id = person_order.person_id
	join menu on menu.id = person_order.menu_id
	join pizzeria on pizzeria.id = menu.pizzeria_id
	where person.gender = 'male'
), female_order as (
	select pizzeria.name from person_order
	join person on person.id = person_order.person_id
	join menu on menu.id = person_order.menu_id
	join pizzeria on pizzeria.id = menu.pizzeria_id
	where person.gender = 'female'
)
select female_order.name from female_order
except
select male_order.name from male_order
ORDER BY 1