-- drop table dim_positions;
create table if not exists dim_positions
(
    position_pk uuid not null primary key,


    created timestamptz not null,
    updated timestamptz not null
);

create index idx_positions on dim_positions (position_pk);