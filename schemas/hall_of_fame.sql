-- drop table baseball_databank.hall_of_fame;
create table if not exists baseball_databank.hall_of_fame
(
    player_id varchar(64) not null primary key,
    year_id integer not null,
    voted_by varchar(64),
    ballots_cast integer,
    votes_required integer,
    votes_received integer,
    inducted boolean,
    category varchar(64),
    notes varchar(255)
);

alter table baseball_databank.hall_of_fame owner to ajp;

create index idx_player_id on baseball_databank.hall_of_fame (player_id);
create index idx_year_id on baseball_databank.hall_of_fame (year_id);