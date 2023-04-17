-- drop table baseball_databank.batting_post;
create table if not exists baseball_databank.batting_post
(
    year_id integer not null primary key,
    playoff_round varchar(8) not null,
    player_id varchar(64) not null,
    team_id varchar(8) not null,
    league_id varchar(8),
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

alter table baseball_databank.batting_post owner to ajp;

create index idx_year_id on baseball_databank.batting_post (year_id);
create index idx_player_id on baseball_databank.batting_post (player_id);
create index idx_team_id on baseball_databank.batting_post (team_id);