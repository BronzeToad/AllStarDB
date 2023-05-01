-- drop table college_play;
create table if not exists college_play
(
    college_play_pk uuid not null primary key,
    person_fk uuid not null,
    school_fk uuid not null,
    year integer not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_college_play on college_play (college_play_pk);