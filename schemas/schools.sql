-- drop table schools;
create table if not exists schools
(
    school_pk uuid not null primary key,
    school_id varchar(64) not null,
    school_name varchar(64),
    city varchar(64),
    state varchar(16),
    country varchar(16)
);

create index idx_schools on schools (school_pk);
create index idx_school_id on schools (school_id);