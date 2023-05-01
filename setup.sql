create database baseball_db with owner bronzetoad;

create schema baseball_databank;
alter schema baseball_databank owner to bronzetoad;

create type awardtype as enum ('player', 'manager', 'unknown');
create type positiontype as enum ('pitcher', 'catcher', 'infield', 'outfield', 'special', 'unknown');
create type handedness as enum ('left', 'right', 'switch', 'unknown');
create type hofcategory as enum ('player', 'pioneer/executive', 'unknown');
create type currencytype as enum ('usd', 'unknown');