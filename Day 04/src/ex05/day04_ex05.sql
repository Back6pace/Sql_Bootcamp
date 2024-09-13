/*
    1) Please create a Database View v_price_with_discount that returns the orders of a person with person name, pizza name, 
    real price and calculated column discount_price (with applied 10% discount and satisfying formula price - price*0.1). 
    2) Please sort the result by person names and pizza names and convert the discount_price column to integer type. 
    See a sample result below.
*/

select p.name, m.pizza_name, m.price, cast((m.price - (m.price * 0.1)) as int) as discount_price
from person_order as po
join person as p on p.id = po.person_id
join menu as m on m.id = po.menu_id
order by 1, 2