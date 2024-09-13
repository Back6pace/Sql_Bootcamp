/*
 Please make a select statement that returns the person identifiers (without duplicates) 
 who visited pizzerias in a period from January 6, 2022 to January 9, 2022 (including all days) or 
 visited pizzerias with identifier 2. Also include ordering clause by person identifier in descending mode.
 */
select distinct person_id,
    person.name,
    visit_date
from person_visits
    join person on person_visits.person_id = person.id
where visit_date between '2022-01-06' and '2022-01-09'
    or pizzeria_id = 2
order by person_id desc