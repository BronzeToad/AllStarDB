-- drop table baseball_databank.all_star_full;
create table if not exists baseball_databank.all_star_full
(
    player_id varchar(16) not null primary key,
    year_id integer not null,
    game_number integer,
    game_id char(12) not null,
    team_id char(3) not null,
    league_id char(2),
    games_played integer,
    starting_position integer
);

create index idx_player_id on baseball_databank.all_star_full (player_id);
create index idx_year_id on baseball_databank.all_star_full (year_id);
create index idx_game_id on baseball_databank.all_star_full (game_id);