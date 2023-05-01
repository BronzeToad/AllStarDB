-- drop table dim_people;
create table if not exists dim_people
(
    person_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_people on dim_people (person_pk);