-- drop table parks;
create table if not exists parks
(
    park_pk uuid not null primary key,
    park_id char(5) not null,
    park_name varchar(64),
    park_alias varchar(64),
    city varchar(64),
    state char(2),
    country varchar(16)
);

create index idx_parks on parks (park_pk);
create index idx_park_id on parks (park_id);