-- drop table award_stats;
create table if not exists award_stats
(
    award_stats_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_award_stats on award_stats (award_stats_pk);