-- drop table fielding_stats_postseason;
create table if not exists fielding_stats_postseason
(
    fielding_stats_post_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_fielding_stats_postseason on fielding_stats_postseason (fielding_stats_post_pk);