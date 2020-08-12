--liquibase formatted sql
--changeset valentin:3
--comment create sessions table
create table sessions (
    id number generated always as identity,
    workshop_id number,
    start_date date,
    constraint sessions_pk primary key (id)
); 

--rollback drop table sessions purge;
