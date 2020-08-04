create database if not exists web_customer_tracker;

use web_customer_tracker;

drop table if exists customer;

create table customer(
id int not null auto_increment,
first_name varchar(25) default null,
last_name varchar(25) default null,
email varchar(50) default null,
primary key(id)
)engine=InnoDB auto_increment=1 default charset = latin1;

insert into customer(first_name,last_name,email)
values('Sandeep','Shukla','sandeepshukla@gmail.com');

insert into customer(first_name,last_name,email)
values('Prachi','Garg','prachigarg@gmail.com');

insert into customer(first_name,last_name,email)
values('Shubham','Singh','shubhamsingh@gmail.com');

insert into customer(first_name,last_name,email)
values('Aditi','Singh','aditisingh@gmail.com');

insert into customer(first_name,last_name,email)
values('Avinash','Pandey','avinashpandey@gmail.com');
