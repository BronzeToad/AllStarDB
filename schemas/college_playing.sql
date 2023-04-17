-- drop table baseball_databank.college_playing;
create table if not exists baseball_databank.college_playing
(
    player_id varchar(64) not null primary key,
    school_id varchar(64) not null,
    year_id integer not null
);

alter table baseball_databank.college_playing owner to ajp;

create index idx_player_id on baseball_databank.college_playing (player_id);
create index idx_school_id on baseball_databank.college_playing (school_id);
create index idx_year_id on baseball_databank.college_playing (year_id);