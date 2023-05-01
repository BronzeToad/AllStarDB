-- drop table pitching_stats;
create table if not exists pitching_stats
(
    pitching_stats_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_pitching_stats on pitching_stats (pitching_stats_pk);