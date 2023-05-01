-- drop table dim_franchises;
create table if not exists dim_franchises
(
    franchise_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_franchises on dim_franchises (franchise_pk);