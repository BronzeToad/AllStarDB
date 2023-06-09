-- drop table dim_locations;
create table if not exists dim_locations
(
    location_pk uuid not null primary key,
    country varchar(64) not null,       -- TODO: check max length
    state varchar(64),      -- TODO: check max length
    city varchar(64),       -- TODO: check max length
    zip_code integer,
    latitude decimal(8,6),
    longitude decimal(9,6),
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_locations on dim_locations (location_pk);