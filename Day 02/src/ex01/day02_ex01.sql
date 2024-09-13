/*
    Please write a SQL statement that returns the missing days from January 1 through January 10, 2022 (including all days) 
    for visits by people with identifiers 1 or 2 (i.e., days missed by both). 
    Please order by visit days in ascending mode. The sample data with column names is shown below.
*/

SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date
LEFT JOIN (SELECT visit_date FROM person_visits
		  WHERE person_id = 1 OR person_id = 2
		  AND visit_date BETWEEN '2022-01-01'AND '2022-01-10') AS vd ON missing_date = vd.visit_date
WHERE vd.visit_date IS NULL
ORDER BY missing_date