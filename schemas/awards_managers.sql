-- drop table baseball_databank.awards_managers;
create table if not exists baseball_databank.awards_managers
(
    manager_id varchar(16) not null primary key,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    tie_flag boolean,
    notes varchar(255)
);

create index idx_manager_id on baseball_databank.awards_managers (manager_id);
create index idx_award_id on baseball_databank.awards_managers (award_id);
create index idx_year_id on baseball_databank.awards_managers (year_id);