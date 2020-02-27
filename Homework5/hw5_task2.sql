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
id int primary key auto_increment,
order_name varchar(120) not null,
category_id int not null,
quality_id int not null,
factory_id int not null,
garanty_id int
);


create table customers_orders(
customer_id int not null,
order_id int not null
);

create table categories(
id int primary key auto_increment,
category_name varchar(50) not null
);

create table towns(
id int primary key auto_increment,
town_name varchar(80) not null
);

create table countries(
id int primary key auto_increment,
country_name varchar(70) not null
);

create table qualities(
id int primary key auto_increment,
type_of_quality varchar(50)
);

create table factories(
id int primary key auto_increment,
factory_name varchar(70)
);

create table garanties(
id int primary key auto_increment,
years_of_garanty int not null
); 

alter table orders add foreign key(category_id) references categories(id);
alter table customers add foreign key(town_id) references towns(id);
alter table customers add foreign key(country_id) references countries(id);
alter table orders add foreign key(quality_id) references qualities(id);
alter table orders add foreign key(factory_id) references factories(id);
alter table orders add foreign key(garanty_id) references garanties(id);
alter table customers_orders add foreign key(customer_id) references customers(id);
alter table customers_orders add foreign key(order_id) references orders(id);

insert into categories(category_name)
values
("Електротехніка"),
("Іграшки"),
("Побутова хімія"),
("Одяг"),
("Канцтовари"),
("Книги");

insert into towns(town_name)
values
("Львів"),
("Київ"),
("Берлін"),
("Прага"),
("Будапешт"),
("Варшава");

insert into countries(country_name)
values
("Німеччина"),
("Україна"),
("Польща"),
("Угорщина"),
("Чехія");

insert into qualities(type_of_quality)
values
("Висока"),
("Середня"),
("Низька");

insert into factories(factory_name)
values
("Електрон"),
("Дитячий світ"),
("Єва"),
("Школярик"),
("Women Secrets"),
("Vivat");

insert into garanties(years_of_garanty)
values
(5),
(3),
(2),
(4);

insert into customers(customer_name,customer_surname,town_id,country_id)
values
("Іван","Петренко",1,2),
("Сергій","Іващук",2,2),
("Анна","Хоменко",3,1),
("Ярослав","Терещенко",4,5),
("Святослав","Паламарчук",5,4),
("Сергій","Стеценко",4,5),
("Олександр","Рум'янцев",3,1);

insert into orders(order_name,category_id,quality_id,factory_id,garanty_id)
values
("Ведмедик",2,1,2,3),
("Телевізор",1,2,1,1),
("Пральна машина",1,2,1,2),
("Праска",1,1,1,1),
("Книга Фортеця для серця",6,2,6,1),
("Пральна машина",1,2,1,2),
("Набір гелевих ручок",5,2,4,1),
("Сукня",4,3,5,2);

insert into customers_orders(customer_id,order_id)
values
(1,1),
(1,3),
(2,2),
(3,4),
(4,6),
(5,7),
(6,5),
(7,8);



select a.customer_name,a.customer_surname,c.order_name from customers as a
join customers_orders as b
on a.id=b.customer_id
left join orders as c
on c.id=b.order_id
order by a.customer_name;

select a.order_name,b.category_name,c.type_of_quality,d.factory_name,f.years_of_garanty from orders as a
join categories as b
on a.category_id=b.id
join qualities as c
on a.quality_id=c.id
join factories as d
on a.factory_id=d.id
join garanties as f
on a.garanty_id=f.id
where f.years_of_garanty>2;

select a.customer_name,customer_surname,c.order_name,
d.category_name,f.type_of_quality,
g.factory_name,k.years_of_garanty,l.town_name,m.country_name from customers as a
join customers_orders as b
on a.id=b.customer_id
join orders as c
on c.id=b.order_id
join categories as d
on c.category_id=d.id
join qualities as f
on c.quality_id=f.id
join factories as g
on c.factory_id=g.id
join garanties as k
on c.garanty_id=k.id
join towns as l
on l.id=a.town_id
join countries as m
on a.country_id=m.id
order by c.order_name;





