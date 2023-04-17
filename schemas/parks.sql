-- drop table baseball_databank.parks;
create table if not exists baseball_databank.parks
(
    park_id char(5) not null primary key,
    park_name varchar(64),
    park_alias varchar(64),
    city varchar(64),
    state char(2),
    country varchar(8)
);

alter table baseball_databank.parks owner to ajp;

create index idx_park_id on baseball_databank.parks (park_id);