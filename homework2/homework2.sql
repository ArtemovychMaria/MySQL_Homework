drop database library;
create database if not exists library;
use library;
create table book(
id int primary key auto_increment,
book_name varchar(120) not null,
book_description text,
publication_date date not null default "2018-01-01",
category varchar(30) not null,
isbn bigint(20) not null unique,
number_of_pages int not null,
author_name varchar(45) not null,
autor_surname varchar(45) not null,
autor_email char(50) not null unique,
autor_age int not null,
autor_birthday date not null,
autor_awards char(120)
);

insert into book (book_name,book_description,category,isbn,number_of_pages,author_name,autor_surname,autor_email,autor_age,autor_birthday)
values
("Фортеця для серця",
"У книзі головною героїнею є любов.А головним героєм,напевно,прощення.",
"Жіночий роман",
9789661478489,
364,
"Олена",
"Печорна",
"olenapec@ukr.net",
36,
"1982-02-23"
),

("Шпигунка",
"Сюжети своїх книжок Пауло Коельйо бере з життя.",
"Зарубіжна література",
9786171216600,
186,
"Пауло",
"Коельйо",
"paulo@ukr.net",
72,
"1947-08-24"
),

("Все,що я хотіла сьогодні",
"Цю книжку я написала спеціально для молодих дівчат,щоб вони не робили дурних помилок і завжди залишалися собою",
"Роман",
9789661447119,
236,
"Ірен",
"Роздобудько",
"rosdobudko@ukr.net",
57,
"1962-11-03"
),

("Мазепа",
"На сторінках роману читачі зустрінуться з відомими історичними персонажами...",
"Роман",
9789664815175,
478,
"Богдан",
"Лепкий",
"lepkiy@gmail.com",
68,
"1872-11-04"
),

("Ті,що співають у терні",
"У центрі сюжету — життя сім'ї Клірі. Родина зробила шлях від новозеландських бідняків до управителів одного з найбільших австралійських маєтків Дрогеди.",
"Роман",
9786171224667,
685,
"Колін",
"Маккалоу",
"kolin@gmail.com",
77,
"1937-06-01"
),

("Жінки,які кохають до нестями",
"Ця книжка допоможе жінкам,які потерпають від кохання,докорінно змінити себе і своє життя.",
"Сучасна проза",
9786176906940,
319,
"Робін",
"Норвуд",
"norvud@gmail.com",
74,
"1945-07-27"
),

("Вересові меди",
"Нічого не буває просто так, без задуму Божого.",
"Сучасна проза",
9786171260504,
320,
"Надія",
"Гуменюк",
"gumenyk@gmail.com",
70,
"1950-01-02"
),

("Обітниця",
"Долі мешканців вулички з символічною назвою Обітниця переплітаються в тугий вузол, де свої драми і щемливі стосунки, давні й теперішні почуття. Кожен з них давав свою обітницю. Та чи кожен дотримався її крізь час?",
"Сучасна проза",
9786171258778,
352,
"Володимир",
"Лис",
"lys@gmail.com",
69,
"1950-10-26"
),

("Доки кава не охолоне",
"У цій невеличкій кав’ярні вже понад століття подають найсмачнішу каву. Тут можна посидіти за філіжанкою цього гірко-солодкого напою, відволіктися від буденних проблем і… вирушити в подорож у часі.",
"Сучасна проза",
9786171270909,
240,
"Тосікадзу",
"Кавагуті",
"kavaguti@gmail.com",
68,
"1951-10-26"
),

("Містер Мерседес",
"Спогади про нерозкритий злочин не дають спокою колишньому поліцейському Біллу Годжесу. Він мав упіймати злочинця, який на вкраденому «мерседесі» навмисне вбив та покалічив десятки людей, але…",
"Сучасна проза",
9786171274754,
544,
"Стівен",
"Кінг",
"king@gmail.com",
72,
"1947-09-21"
);

insert into book(book_name,publication_date,category,isbn,number_of_pages,author_name,autor_surname,autor_email,autor_age,autor_birthday)
values
("Ліки від кохання",
"1985-07-16",
"Зарубіжна література",
9786171222700,
415,
"Ірвін",
"Ялом",
"irvin@gmail.com",
68,
"1951-09-21"
),

("Нова стара баба",
"2013-01-01",
"Роман",
9789661463041,
268,
"Лариса",
"Денисенко",
"denysenlo@gmail.com",
46,
"1973-06-17"
),

("Тому,що ти є",
"2012-03-02",
"Роман",
9789661423557,
236,
"Дара",
"Корній",
"korniy@gmail.com",
49,
"1970-09-20"
),

("Аномалія",
"2012-03-02",
"Роман",
9786171274358,
384,
"Андрій",
"Новік",
"novik@gmail.com",
49,
"1970-08-22"
),

("Характерник",
"2016-05-10",
"Історико-пригодницький роман",
9786171268418,
304,
"Василь",
"Шкляр",
"shkliar@gmail.com",
68,
"1951-06-10"
),

("Букова земля",
"2016-04-05",
"Роман",
9786175851791,
928,
"Марія",
"Матіос",
"matios@gmail.com",
70,
"1950-08-16"
),

("Бот",
"2017-06-05",
"Сучасна проза",
9786171268340,
544,
"Макс",
"Кідрук",
"kidruk@gmail.com",
35,
"1984-04-01"
),

("Втрачений символ",
"2008-02-02",
"Роман",
9786171249554,
608,
"Ден",
"Браун",
"braun@gmail.com",
55,
"1964-06-22"
),

("Квіти для Елджернона",
"2004-01-28",
"Роман",
9789661476522,
304,
"Деніел",
"Кіз",
"kiz@gmail.com",
70,
"1950-08-16"
),

("Подаруй мені зірку",
"2014-01-27",
"Роман",
9786171270961,
400,
"Джоджо",
"Мойєс",
"moes@gmail.com",
50,
"1969-08-04"
),

("Метелик",
"2010-03-12",
"Роман",
9786171258068,
576,
"Анрі",
"Шар'єр",
"anri@gmail.com",
66,
"1954-09-22"
);

insert into book(book_name,category,isbn,number_of_pages,author_name,autor_surname,autor_email,autor_age,autor_birthday,autor_awards)
values
("Агнес грей",
"Зарубіжна література",
9786171276123,
288,
"Енн",
"Бронте",
"bronte@gmail.com",
29,
"1820-01-17",
"Коронація слова"
),

("Бог завжди подорожує інкогніто",
"Роман",
9786171215528,
416,
"Лоран",
"Гунель",
"gunel@gmail.com",
53,
"1966-08-10",
"Гранослов"
),

("Жовта книга",
"Роман",
9789661408073,
142,
"Ірена",
"Карпа",
"karpa@gmail.com",
29,
"1980-12-08",
"Коронація слова"
),

("Психологія впливу",
"Сучасна проза",
9786171233522,
352,
"Роберт",
"Чалдині",
"chaldyni@gmail.com",
53,
"1966-09-10",
"Коронація слова"
);


select * from book;
select * from book where id=5 or id=10 or id=13;
select * from book where number_of_pages>150;
select * from book where autor_age>30;
select * from book where autor_awards is null;
select * from book where autor_email="chaldyni@gmail.com";
select * from book where isbn=9786171215528;
select * from book where category="Сучасна проза";
select * from book where number_of_pages>200 and autor_age>25;
select * from book where category="Зарубіжна література" or category="Роман";
select * from book order by book_name;
select * from book order by autor_email;
select * from book order by number_of_pages desc;
select distinct category from book;
select distinct author_name from book;
select * from book where publication_date>"2000-01-01";
select * from book where publication_date<"2010-01-01";















