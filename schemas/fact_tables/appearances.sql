-- drop table appearances;
create table if not exists appearances
(
    appearances_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_appearances on appearances (appearances_pk);