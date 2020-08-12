--liquibase formatted sql
--changeset valentin:1
--comment create workshops table
create table workshops (
    id number generated always as identity,
    name varchar2(80),
    active varchar2(1) default 'N',
    constraint workshops_pk primary key (id)
);

--rollback drop table workshops purge;
