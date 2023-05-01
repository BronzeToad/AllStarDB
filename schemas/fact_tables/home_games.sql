-- drop table home_games;
create table if not exists home_games
(
    home_games_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_home_games on home_games (home_games_pk);