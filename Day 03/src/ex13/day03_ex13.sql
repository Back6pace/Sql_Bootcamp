/*
    Write 2 SQL (DML) statements that delete all new orders from Exercise #12 based on the order date. Then delete "greek pizza" from the menu.
*/

delete from person_order
where order_date = '2022-02-25'

delete from menu
where pizza_name = 'greek pizza'