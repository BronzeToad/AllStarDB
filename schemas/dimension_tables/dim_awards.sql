-- drop table dim_awards;
create table if not exists dim_awards
(
    award_pk uuid not null primary key,
    award_name varchar(64) not null,    -- TODO: check max length
    award_type awardtype not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_awards on dim_awards (award_pk);