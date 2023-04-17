-- drop table baseball_databank.people;
create table if not exists baseball_databank.people
(
    player_id varchar(64) not null primary key,
    birth_year integer,
    birth_month integer,
    birth_day integer,
    birth_country varchar(64),
    birth_state varchar(64),
    birth_city varchar(64),
    death_year integer,
    death_month integer,
    death_day integer,
    death_country varchar(64),
    death_state varchar(64),
    death_city varchar(64),
    name_first varchar(64),
    name_last varchar(64),
    name_given varchar(64),
    weight float,
    height float,
    batting_hand varchar(64),
    throwing_hand varchar(64),
    debut_date date,
    final_game date,
    retro_id varchar(64),
    bbref_id varchar(64),
    create_date timestamp not null,
    last_update_date timestamp not null
);

alter table baseball_databank.people owner to ajp;

create index idx_player_id on baseball_databank.people (player_id);