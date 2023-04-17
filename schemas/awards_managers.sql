-- drop table baseball_databank.awards_managers;
create table if not exists baseball_databank.awards_managers
(
    manager_id varchar(64) not null primary key,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id varchar(8),
    tie_flag boolean,
    notes varchar(255)
);

alter table baseball_databank.awards_managers owner to ajp;

create index idx_manager_id on baseball_databank.awards_managers (manager_id);
create index idx_year_id on baseball_databank.awards_managers (year_id);
create index idx_award_id on baseball_databank.awards_managers (award_id);