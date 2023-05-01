-- drop table dim_awards;
create table if not exists dim_awards
(
    award_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_awards on dim_awards (award_pk);