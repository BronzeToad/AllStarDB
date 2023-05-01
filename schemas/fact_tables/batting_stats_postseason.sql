-- drop table batting_stats_postseason;
create table if not exists batting_stats_postseason
(
    batting_stats_post_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year integer not null,
    postseason_fk uuid not null,
    games_played integer,
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
    grounded_into_double integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_batting_stats_postseason on batting_stats_postseason (batting_stats_post_pk);