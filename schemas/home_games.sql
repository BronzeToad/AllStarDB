-- drop table baseball_databank.home_games;
create table if not exists baseball_databank.home_games
(
    year_id integer not null primary key,
    league_id varchar(8),
    team_id varchar(8) not null,
    park_id char(5),
    span_start_date date,
    span_end_date date,
    games_played integer,
    dates_played integer,
    attendance integer
);

alter table baseball_databank.home_games owner to ajp;

create index idx_year_id on baseball_databank.home_games (year_id);
create index idx_team_id on baseball_databank.home_games (team_id);