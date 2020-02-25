drop database if exists shop;
create database shop;
use shop;


create table customers(
id int primary key auto_increment,
customer_name varchar(30) not null,
customer_surname varchar(30),
town_id int not null,
country_id int not null
);

create table orders(
name varchar(120) not null,
customer_id int not null,
category_id int not null,
quality_id int not null,
factory_id int not null,
garanty_id int
);

create table categories(
id int primary key auto_increment,
name varchar(50) not null
);

create table towns(
id int primary key auto_increment,
name varchar(80) not null
);

create table countries(
id int primary key auto_increment,
name varchar(70) not null
);

create table qualities(
id int primary key auto_increment,
type varchar(50)
);

create table factories(
id int primary key auto_increment,
name varchar(70)
);

create table garanties(
id int primary key auto_increment,
years int not null
); 

alter table orders add foreign key(customer_id) references customers(id);
alter table orders add foreign key(category_id) references categories(id);
alter table customers add foreign key(town_id) references towns(id);
alter table customers add foreign key(country_id) references countries(id);
alter table orders add foreign key(quality_id) references qualities(id);
alter table orders add foreign key(factory_id) references factories(id);
alter table orders add foreign key(garanty_id) references garanties(id);

insert into categories(name)
values
("Електротехніка"),
("Іграшки"),
("Побутова хімія");

insert into towns(name)
values
("Львів"),
("Київ"),
("Берлін");

insert into countries(name)
values
("Німеччина"),
("Україна"),
("Польща");

insert into qualities(type)
values
("Висока"),
("Середня"),
("Низька");

insert into factories(name)
values
("Електрон"),
("Дитячий світ"),
("Єва");

insert into garanties(years)
values
(5),
(3),
(2);

insert into customers(customer_name,customer_surname,town_id,country_id)
values
("Іван","Петренко",1,2),
("Сергій","Іващук",2,2),
("Анна","Хоменко",3,1);

insert into orders(name,customer_id,category_id,quality_id,factory_id,garanty_id)
values
("Ведмедик",1,2,1,2,3),
("Телевізор",1,1,2,1,1),
("Пральна машина",2,1,2,1,2),
("Праска",3,1,1,1,1);

select * from orders;
select * from customers;
select * from categories;
select * from factories;
select * from countries;
select * from towns;
select * from garanties;
select * from qualities;



