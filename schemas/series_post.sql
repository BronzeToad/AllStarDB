-- drop table baseball_databank.series_post;
create table if not exists baseball_databank.series_post
(
    year_id integer not null primary key,
    playoff_round varchar(8),
    winner_team_id char(3),
    winner_league_id char(2),
    loser_team_id char(3),
    loser_league_id char(2),
    wins integer,
    losses integer,
    tie_games integer
);

alter table baseball_databank.series_post owner to ajp;

create index idx_year_id on baseball_databank.series_post (year_id);