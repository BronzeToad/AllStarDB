-- drop table managers_half;
create table if not exists managers_half
(
    manager_pk uuid not null primary key,
    manager_id varchar(16) not null,
    year_id integer not null,
    team_id char(3) not null,
    league_id char(2),
    managerial_order integer,
    season_half integer,
    games_managed integer,
    wins integer,
    losses integer,
    rank integer
);

create index idx_managers_half on managers_half (manager_pk);
create index idx_manager_id on managers_half (manager_id);
create index idx_year_id on managers_half (year_id);
create index idx_team_id on managers_half (team_id);