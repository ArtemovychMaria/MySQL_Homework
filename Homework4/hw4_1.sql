drop database library;
create database if not exists library;
use library;

create table books(
id int primary key auto_increment,
book_name varchar(120),
description text,
price real,
isbn bigint,
category_id int not null
);

create table categories(
id int primary key auto_increment,
category_name varchar(50)
);

create table autors(
id int primary key auto_increment,
autor_name varchar(30) not null,
autor_surname varchar(30) not null,
autor_email char(50),
autor_adress varchar(50),
autor_birthday date
);

create table books_autors(
book_id int not null,
autor_id int not null
);

alter table books add foreign key(category_id) references categories(id);
alter table books_autors add foreign key(book_id) references books(id);
alter table books_autors add foreign key(autor_id) references autors(id);

insert into categories(category_name)
values
("Роман"),
("Фантастика");
insert into books(book_name,price,category_id)
values
("Одного разу",120,1),
("Щоденник мавки",240,1);

insert into autors(autor_name,autor_surname,autor_birthday)
values
("Дара","Корній","1965-02-07"),
("Ірен","РОздобудько","1976-03-07"),
("Олена","Печорна","1983-02-18");

insert into books_autors(book_id,autor_id)
values
(1,1),
(1,3);

select * from books;
select * from categories;
select * from autors;
select * from books_autors;
