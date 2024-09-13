/*
    Please create a better multi-column B-Tree index named idx_person_order_multi for the SQL statement below.
*/

-- CREATE INDEX idx_person_order_multi ON person_order(person_id, menu_id, order_date);

set enable_seqscan to off;
EXPLAIN ANALYZE
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 14;

-- drop index idx_person_order_multi
-- DROP INDEX idx_person_order_multi;
