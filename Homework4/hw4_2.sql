drop database if exists shop;
create database shop;
use shop;


create table customers(
id int primary key auto_increment,
customer_name varchar(30) not null,
customer_surname varchar(30),
town_id int not null
);

create table orders(
id int primary key auto_increment,
order_name_id int not null,
category_id int not null,
quality_id int not null,
factory_id int not null,
garanty_id int
);

create table order_names(
id int primary key auto_increment,
order_name varchar(70)
);

create table customers_orders(
customer_id int not null,
order_id int not null
);

create table categories(
id int primary key auto_increment,
name varchar(50) not null
);

create table towns(
id int primary key auto_increment,
name varchar(80) not null,
country_id int not null
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

alter table customers_orders add foreign key(customer_id) references customers(id);
alter table customers_orders add foreign key(order_id) references orders(id);
alter table orders add foreign key(category_id) references categories(id);
alter table customers add foreign key(town_id) references towns(id);
alter table towns add foreign key(country_id) references countries(id);
alter table orders add foreign key(quality_id) references qualities(id);
alter table orders add foreign key(factory_id) references factories(id);
alter table orders add foreign key(garanty_id) references garanties(id);
alter table orders add foreign key(order_name_id) references order_names(id);

insert into categories(name)
values
("Електротехніка"),
("Іграшки"),
("Побутова хімія");

insert into countries(name)
values
("Німеччина"),
("Україна"),
("Польща");

insert into towns(name,country_id)
values
("Львів",2),
("Київ",2),
("Берлін",1);

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

insert into customers(customer_name,customer_surname,town_id)
values
("Іван","Петренко",1),
("Сергій","Іващук",2),
("Анна","Хоменко",3);

insert into order_names(order_name)
values
("Ведмедик"),
("Телевізор"),
("Пральна машина"),
("Праска");

insert into orders(order_name_id,category_id,quality_id,factory_id,garanty_id)
values
(1,2,1,2,3),
(2,1,2,1,1),
(3,1,2,1,2),
(4,1,1,1,1);

insert into customers_orders(customer_id,order_id)
values
(1,2),
(1,3),
(2,1),
(3,4);

select * from orders;
select * from customers;
select * from categories;
select * from factories;
select * from countries;
select * from towns;
select * from garanties;
select * from qualities;
select * from customers_orders;



