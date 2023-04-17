-- drop table baseball_databank.awards_share_managers;
create table if not exists baseball_databank.awards_share_managers
(
    award_id varchar(64) not null primary key,
    year_id integer not null,
    league_id char(2),
    manager_id varchar(64) not null,
    points_received integer,
    points_possible integer,
    first_place_votes integer
);

create index idx_award_id on baseball_databank.awards_share_managers (award_id);
create index idx_year_id on baseball_databank.awards_share_managers (year_id);
create index idx_manager_id on baseball_databank.awards_share_managers (manager_id);