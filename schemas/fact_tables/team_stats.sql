-- drop table team_stats;
create table if not exists team_stats
(
    team_stats_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_team_stats on team_stats (team_stats_pk);