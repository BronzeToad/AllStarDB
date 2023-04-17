-- drop table people;
create table if not exists people
(
    people_pk uuid not null primary key,
    player_id varchar(16) not null,
    birth_year integer,
    birth_month integer,
    birth_day integer,
    birth_country varchar(16),
    birth_state varchar(16),
    birth_city varchar(64),
    death_year integer,
    death_month integer,
    death_day integer,
    death_country varchar(16),
    death_state varchar(16),
    death_city varchar(64),
    name_first varchar(64),
    name_last varchar(64),
    name_given varchar(64),
    weight float,
    height float,
    batting_hand char(1),
    throwing_hand char(1),
    debut_date date,
    final_game date,
    retro_id varchar(16),
    bbref_id varchar(16),
    create_date timestamp not null,
    last_update_date timestamp not null
);

create index idx_people on people (people_pk);
create index idx_player_id on people (player_id);