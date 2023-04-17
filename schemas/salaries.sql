-- drop table baseball_databank.salaries;
create table if not exists baseball_databank.salaries
(
    year_id integer not null primary key,
    team_id char(3) not null,
    league_id char(2) not null,
    player_id varchar(64) not null,
    salary integer
);

alter table baseball_databank.salaries owner to ajp;

create index idx_year_id on baseball_databank.salaries (year_id);
create index idx_team_id on baseball_databank.salaries (team_id);
create index idx_league_id on baseball_databank.salaries (league_id);
create index idx_player_id on baseball_databank.salaries (player_id);