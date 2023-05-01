-- drop table salaries;
create table if not exists salaries
(
    salaries_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_salaries on salaries (salaries_pk);