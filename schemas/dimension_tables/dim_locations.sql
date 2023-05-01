-- drop table dim_locations;
create table if not exists dim_locations
(
    location_pk uuid not null primary key,
    country_id char(2) not null,
    country_name varchar(16) not null,
    state varchar(32),
    city varchar(32),
    zip_code decimal(5,0),
    latitude decimal(8,6),
    longitude decimal(9,6),
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_locations on dim_locations (location_pk);