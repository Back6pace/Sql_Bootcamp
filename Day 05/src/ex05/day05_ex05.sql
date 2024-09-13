/*
    Please create a partially unique BTree index named idx_person_order_order_date 
    on the person_order table for the person_id and menu_id attributes with partial 
    uniqueness for the order_date column for the date '2022-01-01'.
    The EXPLAIN ANALYZE command should return the next pattern.
*/

CREATE UNIQUE INDEX idx_person_order_order_date on person_order(person_id, menu_id)
where order_date = '2022-01-01';

SET enable_seqscan to off;
EXPLAIN ANALYZE
SELECT person_id, menu_id
FROM person_order as po 
WHERE order_date = '2022-01-01'

-- DROP INDEX idx_person_order;