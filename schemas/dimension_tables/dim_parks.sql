-- drop table dim_parks;
create table if not exists dim_parks
(
    park_pk uuid not null primary key,
    park_id char(5) not null,       -- TODO: check lengths
    park_name varchar(64) not null,     -- TODO: check max length
    park_alias varchar(64),         -- TODO: check max length
    park_location_fk uuid not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_parks on dim_parks (park_pk);