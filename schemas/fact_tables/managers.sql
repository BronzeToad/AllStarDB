-- drop table managers;
create table if not exists managers
(
    managers_pk uuid not null primary key,
    person_fk uuid not null,
    team_fk uuid not null,
    year decimal(4,0) not null,
    games_managed integer,
    wins integer,
    losses integer,
    rank integer,
    full_season boolean,
    manager_order integer,
    player_manager boolean,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_managers on managers (managers_pk);