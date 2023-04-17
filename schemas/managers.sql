-- drop table managers;
create table if not exists managers
(
    manager_pk uuid not null primary key,
    manager_id varchar(16) not null,
    year_id integer not null,
    team_id char(3) not null,
    league_id char(2),
    managerial_order integer,
    games_managed integer,
    wins integer,
    losses integer,
    rank integer,
    player_manager boolean
);

create index idx_managers on managers (manager_pk);
create index idx_manager_id on managers (manager_id);
create index idx_year_id on managers (year_id);
create index idx_team_id on managers (team_id);