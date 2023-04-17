-- drop table hall_of_fame;
create table if not exists hall_of_fame
(
    hall_of_fame_pk uuid not null primary key,
    player_id varchar(16) not null,
    year_id integer not null,
    voted_by varchar(16),
    ballots_cast integer,
    votes_required integer,
    votes_received integer,
    inducted boolean,
    category varchar(64),
    notes varchar(255)
);

create index idx_hall_of_fame on hall_of_fame (hall_of_fame_pk);
create index idx_player_id on hall_of_fame (player_id);
create index idx_year_id on hall_of_fame (year_id);