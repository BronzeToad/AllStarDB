-- drop table postseason_series;
create table if not exists postseason_series
(
    postseason_series_pk uuid not null primary key,
    postseason_fk uuid not null,
    year integer not null,
    winner_team_fk uuid not null,
    loser_team_fk uuid not null,
    wins integer,
    losses integer,
    ties integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_postseason_series on postseason_series (postseason_series_pk);