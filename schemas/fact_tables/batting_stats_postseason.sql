-- drop table batting_stats_postseason;
create table if not exists batting_stats_postseason
(
    batting_stats_post_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_batting_stats_postseason on batting_stats_postseason (batting_stats_post_pk);