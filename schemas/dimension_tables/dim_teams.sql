-- drop table dim_teams;
create table if not exists dim_teams
(
    team_pk uuid not null primary key,
    team_id char(3) not null,
    team_name varchar(64) not null,
    franchise_fk uuid not null,
    league_fk uuid not null,
    division_fk uuid not null,
    park_fk uuid not null,
    active_flag boolean not null,
    bbref_team_id char(3),
    lahman45_team_id char(3),
    retro_team_id char(3),
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_teams on dim_teams (team_pk);