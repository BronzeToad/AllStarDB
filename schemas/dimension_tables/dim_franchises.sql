-- drop table dim_franchises;
create table if not exists dim_franchises
(
    franchise_pk uuid not null primary key,
    franchise_id char(3) not null,
    franchise_name varchar(64) not null,
    active_flag boolean not null,
    nat_association_id char(3),
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_franchises on dim_franchises (franchise_pk);