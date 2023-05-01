-- drop table dim_schools;
create table if not exists dim_schools
(
    school_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_schools on dim_schools (school_pk);