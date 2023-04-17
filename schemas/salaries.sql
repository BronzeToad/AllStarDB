-- drop table salaries;
create table if not exists salaries
(
    salary_pk uuid not null primary key,
    year_id integer not null,
    team_id char(3) not null,
    league_id char(2),
    player_id varchar(16) not null,
    salary integer
);

create index idx_salaries on salaries (salary_pk);
create index idx_year_id on salaries (year_id);
create index idx_team_id on salaries (team_id);
create index idx_player_id on salaries (player_id);