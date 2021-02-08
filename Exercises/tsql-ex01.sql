. echo on
. headers on

-- Name: Brandon Scott
-- File: comicBook.sql
-- Date: January 13, 2021

drop table if exists comicBook;

create table comicBook (
	Issue int primary key,
	Title text,
	Artist text check (Artist in ("Howard Sherman", "Lew Sayre Schwartz", "Neal Adams", "Norm Breyfogle", "Stan Lee")),
	Released year check (Released >= 1940 and Released < 2000),
	Grade float,
	Price float
	);
	
insert into comicBook values (40, "Detective Comics", "Howard Sherman", 1940, 4.0, 4895.00);
insert into comicBook values (168, "Detective Comics", "Lew Sayre Schwartz", 1951, 3.0, 8400.00);
insert into comicBook values (251, "Batman", "Neal Adams", 1973, 9.4, 2137.50);
insert into comicBook values (457, "Batman", "Norm Breyfogle", 1990, 9.8, 149.95);
insert into comicBook values (15, "Amazing Fantasy: Spiderman", "Stan Lee", 1962, 6.5, 95000.00);


select * from comicBook;
select * from comicBook where Artist like "Neal Adams";
select * from comicBook where Price > 4000.00;
select * from comicBook where Grade = 9.8;

