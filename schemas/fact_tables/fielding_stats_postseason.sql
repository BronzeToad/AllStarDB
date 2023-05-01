-- drop table fielding_stats_postseason;
create table if not exists fielding_stats_postseason
(
    fielding_stats_post_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year integer not null,
    position_fk uuid not null,
    postseason_fk uuid not null,
    games_played integer,
    games_started integer,
    outs_played integer,
    putouts integer,
    assists integer,
    errors integer,
    double_plays integer,
    passed_balls integer,
    wild_pitches integer,
    opponents_stolen_bases integer,
    opponents_caught_stealing integer,
    zone_rating integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_fielding_stats_postseason on fielding_stats_postseason (fielding_stats_post_pk);