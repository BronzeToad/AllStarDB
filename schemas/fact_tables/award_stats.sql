-- drop table award_stats;
create table if not exists award_stats
(
    award_stats_pk uuid not null primary key,
    award_fk uuid not null,
    person_fk uuid not null,
    league_fk uuid not null,
    year decimal(4,0) not null,
    points_received integer,
    points_possible integer,
    first_place_votes integer,
    tie boolean,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_award_stats on award_stats (award_stats_pk);