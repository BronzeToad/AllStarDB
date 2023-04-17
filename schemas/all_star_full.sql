-- drop table baseball_databank.all_star_full;
create table if not exists baseball_databank.all_star_full
(
    player_id varchar(64) not null primary key,
    year_id integer not null,
    game_number integer,
    game_id varchar(64),
    team_id varchar(8) not null,
    league_id varchar(8),
    games_played integer,
    starting_position integer
);

create index idx_player_id on baseball_databank.all_star_full (player_id);
create index idx_year_id on baseball_databank.all_star_full (year_id);
create index idx_team_id on baseball_databank.all_star_full (team_id);