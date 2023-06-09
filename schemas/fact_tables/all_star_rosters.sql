-- drop table all_star_rosters;
create table if not exists all_star_rosters
(
    all_star_rosters_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year integer not null,
    game_number integer,
    game_id varchar(64),        -- TODO: check lengths and switch to char type
    played_in_game boolean,
    position_fk uuid,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_all_star_rosters on all_star_rosters (all_star_rosters_pk);