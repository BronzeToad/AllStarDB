-- drop table appearances;
create table if not exists appearances
(
    appearances_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year decimal(4,0) not null,
    total_games integer,
    started integer,
    batting integer,
    defense integer,
    pitcher integer,
    catcher integer,
    infield integer,
    first_base integer,
    second_base integer,
    third_base integer,
    shortstop integer,
    outfield integer,
    left_field integer,
    center_field integer,
    right_field integer,
    designated_hitter integer,
    pinch_hitter integer,
    pinch_runner integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_appearances on appearances (appearances_pk);