-- drop table dim_positions;
create table if not exists dim_positions
(
    position_pk uuid not null primary key,
    position_nbr integer not null,
    position_id varchar(64) not null,       -- TODO: check lengths and switch to char type
    position_type positiontype not null,
    position_name varchar(64) not null,     -- TODO: check max length
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_positions on dim_positions (position_pk);