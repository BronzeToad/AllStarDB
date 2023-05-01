-- drop table postseason_series;
create table if not exists postseason_series
(
    postseason_series_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_postseason_series on postseason_series (postseason_series_pk);