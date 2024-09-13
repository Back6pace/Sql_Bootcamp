/*
 Use the SQL construction from Exercise 05 and add a new calculated column (use column name ‘check_name’) with a check statement a pseudocode for this check is given below) in the SELECT clause.
 */
select (
        select name
        from person
        where person.id = person_order.person_id
    ) as name,
    case
        when (
            select person.name
            from person
            where person.id = person_order.person_id
        ) = 'Denis' then true
        else false
    end as check_name
from person_order
where person_order.menu_id in (13, 14, 18)
    and person_order.order_date = '2022-01-07'
order by person_order.person_id