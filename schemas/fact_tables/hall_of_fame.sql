-- drop table hall_of_fame;
create table if not exists hall_of_fame
(
    hall_of_fame_pk uuid not null primary key,
    person_fk uuid not null,
    year integer not null,
    voted_by varchar(64),       -- TODO: check max length
    ballots_cast integer,
    votes_required integer,
    votes_received integer,
    inducted boolean,
    category hofcategory,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_hall_of_fame on hall_of_fame (hall_of_fame_pk);