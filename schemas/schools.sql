-- drop table baseball_databank.schools;
create table if not exists baseball_databank.schools
(
    school_id varchar(64) not null primary key,
    school_name varchar(64),
    city varchar(64),
    state char(2),
    country varchar(8)
);

alter table baseball_databank.schools owner to ajp;

create index idx_school_id on baseball_databank.schools (school_id);