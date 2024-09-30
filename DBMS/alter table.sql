Create database temp;
use temp;
Create table account(
ID int primary key,
name varchar(50) unique,
balance int not null default 0
);

select * From account;
-- ADD column ina table
alter table account add interest Float not null default 0;

DESC account;

-- MODIFY

alter table account Modify interest double not null default 0;

-- change column [ Rename the column]
alter table account change column interest saving_interest float not null default 0;

-- Droup column

alter table account Drop column saving_interest;

-- change table name

alter table account rename to  account_details;