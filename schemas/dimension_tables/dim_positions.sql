-- drop table dim_positions;
create table if not exists dim_positions
(
    position_pk uuid not null primary key,
    position_id char(2) not null,
    position_type positiontype not null,
    position_name varchar(16) not null,
    position_nbr decimal(1,0),
    created timestamptz not null,
    updated timestamptz not null
);

create index idx_positions on dim_positions (position_pk);