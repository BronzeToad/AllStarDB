-- drop table baseball_databank.awards_share_players;
create table if not exists baseball_databank.awards_share_players
(
    award_id varchar(64) not null primary key,
    year_id integer not null,
    league_id varchar(8),
    player_id varchar(64) not null,
    points_received integer,
    points_possible integer,
    first_place_votes integer
);

alter table baseball_databank.awards_share_players owner to ajp;

create index idx_award_id on baseball_databank.awards_share_players (award_id);
create index idx_year_id on baseball_databank.awards_share_players (year_id);
create index idx_player_id on baseball_databank.awards_share_players (player_id);