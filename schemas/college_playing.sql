-- drop table college_playing;
create table if not exists college_playing
(
    college_playing_pk uuid not null primary key,
    player_id varchar(16) not null,
    school_id varchar(64) not null,
    year_id integer not null
);

create index idx_college_playing on college_playing (college_playing_pk);
create index idx_player_id on college_playing (player_id);
create index idx_school_id on college_playing (school_id);
create index idx_year_id on college_playing (year_id);