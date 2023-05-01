-- drop table batting_stats;
create table if not exists batting_stats
(
    batting_stats_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_batting_stats on batting_stats (batting_stats_pk);