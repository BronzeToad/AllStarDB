-- drop table dim_divisions;
create table if not exists dim_divisions
(
    division_pk uuid not null primary key,
    division_id char(1) not null,
    division_name varchar(64) not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_divisions on dim_divisions (division_pk);