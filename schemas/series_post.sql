-- drop table series_post;
create table if not exists series_post
(
    series_post_pk uuid not null primary key,
    year_id integer not null,
    playoff_round varchar(8),
    winner_team_id char(3),
    winner_league_id char(2),
    loser_team_id char(3),
    loser_league_id char(2),
    wins integer,
    losses integer,
    tie_games integer
);

create index idx_series_post on series_post (series_post_pk);
create index idx_year_id on series_post (year_id);