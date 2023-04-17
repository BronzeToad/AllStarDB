-- drop table home_games;
create table if not exists home_games
(
    home_game_pk uuid not null primary key,
    year_id integer not null,
    league_id varchar(8),
    team_id varchar(8) not null,
    park_id char(5),
    span_start_date date,
    span_end_date date,
    games_played integer,
    dates_played integer,
    attendance integer
);

create index idx_home_games on home_games (home_game_pk);
create index idx_year_id on home_games (year_id);
create index idx_team_id on home_games (team_id);