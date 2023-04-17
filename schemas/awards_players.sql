-- drop table awards_players;
create table if not exists awards_players
(
    player_award_pk uuid not null primary key,
    player_id varchar(16) not null,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    tie_flag boolean,
    notes varchar(255)
);

create index idx_awards_players on awards_players (player_award_pk);
create index idx_player_id on awards_players (player_id);
create index idx_award_id on awards_players (award_id);
create index idx_year_id on awards_players (year_id);