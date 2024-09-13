create table person_audit(
    created timestamp with time zone default current_timestamp not null,
    type_event char(1) not null default 'I',
    row_id bigint not null,
    name varchar,
    age integer,
    gender varchar,
    address varchar
);

alter table person_audit add constraint ch_type_event check(type_event in ('I', 'U', 'D'));

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit() RETURNS trigger AS $person_audit$
    BEGIN
        IF (TG_OP) = 'INSERT' THEN
            INSERT INTO person_audit
                SELECT current_timestamp, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address;
        END IF;
        RETURN NULL;
    END;
$person_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
    AFTER INSERT ON person
    FOR EACH ROW
    EXECUTE PROCEDURE fnc_trg_person_insert_audit()


INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');