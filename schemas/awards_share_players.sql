-- drop table awards_share_players;
create table if not exists awards_share_players
(
    share_players_awards_pk uuid not null primary key,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    player_id varchar(16) not null,
    points_received integer,
    points_possible integer,
    first_place_votes integer
);

create index idx_awards_share_players on awards_share_players (share_players_awards_pk);
create index idx_award_id on awards_share_players (award_id);
create index idx_year_id on awards_share_players (year_id);
create index idx_player_id on awards_share_players (player_id);