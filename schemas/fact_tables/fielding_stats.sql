-- drop table fielding_stats;
create table if not exists fielding_stats
(
    fielding_stats_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_fielding_stats on fielding_stats (fielding_stats_pk);