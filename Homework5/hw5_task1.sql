drop database library;
create database if not exists library;
use library;

create table books(
id int primary key auto_increment,
book_name varchar(120) not null,
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
("Фантастика"),
("Сучасна проза");

insert into books(book_name,price,category_id)
values
("Одного разу",120,1),
("Щоденник мавки",240,3);

insert into books(book_name,description,price,category_id)
values
("Шпигунка","Сюжети своїх книжок Пауло Коельйо бере з життя.",126.5,2),
("Вересові меди","Нічого не буває просто так, без задуму Божого.",202,1);

insert into autors(autor_name,autor_surname,autor_birthday)
values
("Дара","Корній","1965-02-07"),
("Ірен","Роздобудько","1976-03-07"),
("Олена","Печорна","1983-02-18"),
("Надія","Гуменюк","1986-04-07"),
("Пауло","Коельйо","1954-04-09");

insert into books_autors(book_id,autor_id)
values
(1,1),
(1,3),
(2,1),
(3,5),
(4,4);




select a.id, a.book_name, a.description, a.price, b.category_name from books as a
right join categories as b
on a.category_id=b.id
order by a.id;

select a.autor_name,a.autor_surname,a.autor_birthday,c.book_name,c.price from autors as a
join books_autors as b
on b.autor_id=a.id
join books as c
on b.book_id=c.id
where c.price>180;


select a.book_name,a.description,b.category_name,d.autor_name,d.autor_surname from books as a
join categories as b
on a.category_id=b.id
join books_autors as c
on c.book_id=a.id
join autors as d
on d.id=c.autor_id
order by a.book_name;

select a.book_name,a.description,b.category_name from books as a
left join categories as b
on a.category_id=b.id
where b.category_name="Роман";
