-- drop table hall_of_fame;
create table if not exists hall_of_fame
(
    hall_of_fame_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_hall_of_fame on hall_of_fame (hall_of_fame_pk);