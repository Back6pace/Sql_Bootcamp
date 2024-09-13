/*
    Find all menu identifiers that are not ordered by anyone. 
    The result should be sorted by identifier. 
    The sample output is shown below.
*/

select id as menu_id from menu
where not exists (
	select menu_id from person_order where menu_id = menu.id
)
order by 1