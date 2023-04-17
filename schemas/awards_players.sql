-- drop table baseball_databank.awards_players;
create table if not exists baseball_databank.awards_players
(
    player_id varchar(64) not null primary key,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    tie_flag boolean,
    notes varchar(255)
);

create index idx_player_id on baseball_databank.awards_players (player_id);
create index idx_award_id on baseball_databank.awards_players (award_id);
create index idx_year_id on baseball_databank.awards_players (year_id);