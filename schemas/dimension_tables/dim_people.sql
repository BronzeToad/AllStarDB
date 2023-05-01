-- drop table dim_people;
create table if not exists dim_people
(
    person_pk uuid not null primary key,
    player_id varchar(64) not null,     -- TODO: check lengths and switch to char type
    birth_date date,
    death_date date,
    birth_location_fk uuid,
    death_location_fk uuid,
    first_name varchar(64) not null,        -- TODO: check max length and if nulls exist
    last_name varchar(64) not null,         -- TODO: check max length and if nulls exist
    given_name varchar(64) not null,        -- TODO: check max length and if nulls exist
    weight integer,
    height integer,
    batting_hand handedness,
    throwing_hand handedness,
    debut_date date not null,
    final_game date,
    retro_id varchar(64),       -- TODO: check lengths and switch to char type
    bbref_id varchar(64),       -- TODO: check lengths and switch to char type
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_people on dim_people (person_pk);