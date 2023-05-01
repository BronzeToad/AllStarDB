-- drop table dim_postseason;
create table if not exists dim_postseason
(
    postseason_pk uuid not null primary key,
    round_id varchar(8) not null,
    round_name varchar(64) not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_postseason on dim_postseason (postseason_pk);