-- drop table baseball_databank.appearances;
create table if not exists baseball_databank.appearances
(
    appearances_id varchar(64) not null primary key,
    year_id integer not null,
    team_id varchar(8) not null,
    league_id varchar(8),
    player_id varchar(64) not null,
    total_games integer,
    games_started integer,
    games_batting integer,
    games_defense integer,
    games_pitcher integer,
    games_catcher integer,
    games_first_base integer,
    games_second_base integer,
    games_third_base integer,
    games_shortstop integer,
    games_left_field integer,
    games_center_field integer,
    games_right_field integer,
    games_outfield integer,
    games_designated_hitter integer,
    games_pinch_hitter integer,
    games_pinch_runner integer
);

create index idx_appearances_id on baseball_databank.appearances (appearances_id);
create index idx_player_id on baseball_databank.appearances (player_id);
create index idx_year_id on baseball_databank.appearances (year_id);
create index idx_team_id on baseball_databank.appearances (team_id);