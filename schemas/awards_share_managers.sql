-- drop table awards_share_managers;
create table if not exists awards_share_managers
(
    share_manager_award_pk uuid not null primary key,
    award_id varchar(64) not null,
    year_id integer not null,
    league_id char(2),
    manager_id varchar(16) not null,
    points_received integer,
    points_possible integer,
    first_place_votes integer
);

create index idx_awards_share_managers on awards_share_managers (share_manager_award_pk);
create index idx_award_id on awards_share_managers (award_id);
create index idx_year_id on awards_share_managers (year_id);
create index idx_manager_id on awards_share_managers (manager_id);