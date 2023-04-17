-- drop table all_star_full;
create table if not exists all_star_full
(
    all_star_pk uuid not null primary key,
    player_id varchar(16) not null,
    year_id integer not null,
    game_number integer,
    game_id char(12) not null,
    team_id char(3) not null,
    league_id char(2),
    games_played integer,
    starting_position integer
);

create index idx_all_star_full on all_star_full (all_star_pk);
create index idx_player_id on all_star_full (player_id);
create index idx_year_id on all_star_full (year_id);
create index idx_game_id on all_star_full (game_id);