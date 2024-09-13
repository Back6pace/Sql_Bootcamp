/*
    Please create a Database View (with name v_generated_dates) which should "store" 
    generated dates from January 1st to January 31st, 2022 in type DATE. 
    Don't forget the order of the generated_date column.
*/

create view v_generated_dates as 
	select January::date
	from generate_series('2022-01-01', '2022-01-31', interval '1 day') as January
	order by 1