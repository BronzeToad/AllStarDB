-- drop table baseball_databank.teams_franchises;
create table if not exists baseball_databank.teams_franchises
(

);

alter table baseball_databank.teams_franchises owner to ajp;

create index idx_xxx on baseball_databank.teams_franchises (xxx);