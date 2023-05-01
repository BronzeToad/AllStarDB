-- drop table pitching_stats;
create table if not exists pitching_stats
(
    pitching_stats_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year integer not null,
    player_stint integer not null,
    wins integer,
    loses integer,
    games_played integer,
    games_started integer,
    games_finished integer,
    complete_games integer,
    shutouts integer,
    saves integer,
    outs_pitched integer,
    hits integer,
    earned_runs integer,
    home_runs integer,
    walks integer,
    strikeouts integer,
    batting_avg_opponent decimal(4,3),
    earned_run_avg decimal(4,2),    -- TODO: check max value
    intentional_walks integer,
    wild_pitches integer,
    hit_by_pitch integer,
    balks integer,
    batters_faced integer,
    runs_allowed integer,
    sacrifice_hits integer,
    sacrifice_flies integer,
    grounded_into_double integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_pitching_stats on pitching_stats (pitching_stats_pk);