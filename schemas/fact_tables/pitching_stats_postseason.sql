-- drop table pitching_stats_postseason;
create table if not exists pitching_stats_postseason
(
    pitching_stats_post_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_pitching_stats_postseason on pitching_stats_postseason (pitching_stats_post_pk);