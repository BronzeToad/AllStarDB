-- drop table dim_parks;
create table if not exists dim_parks
(
    park_pk uuid not null primary key,
    park_id char(5) not null,
    park_name varchar(64) not null,
    park_alias varchar(64),
    park_location_fk uuid not null,
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_parks on dim_parks (park_pk);