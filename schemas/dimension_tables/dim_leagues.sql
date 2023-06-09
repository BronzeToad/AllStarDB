-- drop table dim_leagues;
create table if not exists dim_leagues
(
    league_pk uuid not null primary key,
    league_id char(2) not null,     -- TODO: check lengths
    league_name varchar(64) not null,       -- TODO: check max length
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_leagues on dim_leagues (league_pk);