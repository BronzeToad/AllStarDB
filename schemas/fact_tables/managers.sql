-- drop table managers;
create table if not exists managers
(
    managers_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_managers on managers (managers_pk);