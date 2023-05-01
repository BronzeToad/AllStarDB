-- drop table all_star_rosters;
create table if not exists all_star_rosters
(
    all_star_rosters_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_all_star_rosters on all_star_rosters (all_star_rosters_pk);