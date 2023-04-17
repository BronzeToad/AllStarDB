-- drop table baseball_databank.teams;
create table if not exists baseball_databank.teams
(

);

alter table baseball_databank.teams owner to ajp;

create index idx_xxx on baseball_databank.teams (xxx);