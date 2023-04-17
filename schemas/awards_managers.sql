-- drop table awards_managers;
create table if not exists awards_managers
(
    manager_award_pk uuid not null primary key,
    manager_id varchar(16) not null,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    tie_flag boolean,
    notes varchar(255)
);

create index idx_awards_managers on awards_managers (manager_award_pk);
create index idx_manager_id on awards_managers (manager_id);
create index idx_award_id on awards_managers (award_id);
create index idx_year_id on awards_managers (year_id);