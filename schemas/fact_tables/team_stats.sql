-- drop table team_stats;
create table if not exists team_stats
(
    team_stats_pk uuid not null primary key,
    team_fk uuid not null,
    year decimal(4,0) not null,
    rank integer,
    home_games_played integer,
    division_winner boolean,
    league_winner boolean,
    world_series_winner boolean,
    home_attendance integer,
    park_factor_batters integer,
    park_factor_pitchers integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_team_stats on team_stats (team_stats_pk);