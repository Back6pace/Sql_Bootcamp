/*
 Write a select statement that returns the names of people 
 (based on an internal query in the SELECT clause) who placed orders for the menu with identifiers 13, 14, and 18, 
 and the date of the orders should be January 7, 2022. Be careful with "Denied Section" before your work.
 Please take a look at the pattern of internal query.
 */
select (
        select name
        from person
        where person.id = person_order.person_id
    ) as name
from person_order
where person_order.menu_id in (13, 14, 18)
    and person_order.order_date = '2022-01-07'
order by person_order.person_id