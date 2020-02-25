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
autor_surname varchar(30),
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
