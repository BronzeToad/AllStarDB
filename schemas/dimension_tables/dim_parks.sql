-- drop table dim_parks;
create table if not exists dim_parks
(
    park_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_parks on dim_parks (park_pk);