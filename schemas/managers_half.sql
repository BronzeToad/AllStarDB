-- drop table baseball_databank.managers_half;
create table if not exists baseball_databank.managers_half
(
    manager_id varchar(64) not null primary key,
    year_id integer not null,
    team_id varchar(8) not null,
    league_id varchar(8),
    managerial_order integer,
    season_half integer,
    games_managed integer,
    wins integer,
    losses integer,
    rank integer
);

alter table baseball_databank.managers_half owner to ajp;

create index idx_manager_id on baseball_databank.managers_half (manager_id);
create index idx_year_id on baseball_databank.managers_half (year_id);
create index idx_team_id on baseball_databank.managers_half (team_id);