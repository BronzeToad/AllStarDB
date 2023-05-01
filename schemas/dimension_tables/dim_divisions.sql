-- drop table dim_divisions;
create table if not exists dim_divisions
(
    division_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_divisions on dim_divisions (division_pk);