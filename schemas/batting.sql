-- drop table batting;
create table if not exists batting
(
    batting_pk uuid not null primary key,
    player_id varchar(16) not null,
    year_id integer not null,
    player_stint integer,
    team_id char(3) not null,
    league_id char(2),
    games_played_batting integer,
    at_bats integer,
    runs integer,
    hits integer,
    doubles integer,
    triples integer,
    home_runs integer,
    runs_batted_in integer,
    stolen_bases integer,
    caught_stealing integer,
    base_on_balls integer,
    strikeouts integer,
    intentional_walks integer,
    hit_by_pitch integer,
    sacrifice_hits integer,
    sacrifice_flies integer,
    grounded_into_double_plays integer
);

create index idx_batting_pk on batting (batting_pk);
create index idx_player_id on batting (player_id);
create index idx_year_id on batting (year_id);
create index idx_team_id on batting (team_id);