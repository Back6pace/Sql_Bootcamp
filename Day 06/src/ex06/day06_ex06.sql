/*
    Let’s create a Database Sequence named seq_person_discounts (starting with a value of 1) and set a 
    default value for the id attribute of the person_discounts table to automatically take a value from seq_person_discounts each time.

    Please note that your next sequence number is 1, in this case please set an actual value for database sequence 
    based on formula "number of rows in person_discounts table" + 1. Otherwise you will get errors about Primary Key violation constraint.
*/

create sequence seq_person_discounts start with 1 increment by 1;


SELECT setval('seq_person_discounts', (SELECT COALESCE(MAX(id), 0) + 1 FROM person_discounts));

ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
