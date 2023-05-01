-- drop table dim_locations;
create table if not exists dim_locations
(
    location_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_locations on dim_locations (location_pk);