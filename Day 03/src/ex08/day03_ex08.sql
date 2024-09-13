/*
    Please register a new pizza with the name "sicilian pizza" 
    (whose id should be calculated by the formula "maximum id value + 1") 
    with the price of 900 rubles in the restaurant "Dominos" 
    (please use internal query to get the identifier of the pizzeria).
*/

insert INTO menu (id,pizzeria_id, pizza_name, price) 
values ((select max(id) from menu) + 1, (select id from pizzeria where name = 'Dominos'), 'sicilian pizza', 900)