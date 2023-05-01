-- drop table home_games;
create table if not exists home_games
(
    home_games_pk uuid not null primary key,
    team_fk uuid not null,
    year decimal(4,0) not null,
    span_start_date date not null,
    span_end_date date,
    games_played integer,
    dates_played integer,
    attendance integer,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_home_games on home_games (home_games_pk);