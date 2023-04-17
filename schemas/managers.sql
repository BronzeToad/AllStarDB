-- drop table baseball_databank.managers;
create table if not exists baseball_databank.managers
(
    manager_id varchar(64) not null primary key,
    year_id integer not null,
    team_id varchar(8) not null,
    league_id varchar(8),
    managerial_order integer,
    games_managed integer,
    wins integer,
    losses integer,
    rank integer,
    player_manager boolean
);

alter table baseball_databank.managers owner to ajp;

create index idx_manager_id on baseball_databank.managers (manager_id);
create index idx_year_id on baseball_databank.managers (year_id);
create index idx_team_id on baseball_databank.managers (team_id);