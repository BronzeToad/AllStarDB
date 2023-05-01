-- drop table salaries;
create table if not exists salaries
(
    salaries_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year integer not null,
    salary integer,
    currency_type currencytype,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_salaries on salaries (salaries_pk);