-- drop table dim_schools;
create table if not exists dim_schools
(
    school_pk uuid not null primary key,
    school_id varchar(64) not null,     -- TODO: check lengths and switch to char type
    school_name varchar(64) not null,       -- TODO: check max length
    school_location_fk uuid not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_schools on dim_schools (school_pk);