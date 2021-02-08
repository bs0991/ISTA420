-- Name: Brandon Scott
-- File: tsql-ex04.sql
-- Date: February 03, 2021

use tsqlv4;

-- 1. Use a derived table to build a query that returns the number of distinct products per year that each
--customer ordered. Use internal aliasing. Use a variable to set the customer number. For example, if
--the customer ID is 1234, the query should report the number of distinct products ordered by customer
--1234 for the years 2014, 2015, and 2016.

-- tables used: production.products, sales.orders

--select o.custid, year(o.orderdate) as orderyear, count(distinct od.productid) as numprod
--from sales.orders o
--	inner join sales.orderdetails od
--	on o.orderid = od.orderid
--group by o.custid, year(o.orderdate);

select custid, orderyear, numprod
from (select custid, year(orderdate) as orderyear, count(distinct productid) as numprod
	  from sales.orders o
		inner join sales.orderdetails od
		on o.orderid = od.orderid
		group by custid, year(orderdate)) as o
group by custid, orderyear, numprod;

-- 2. Use multiple common table expressions to build a query that returns the number of distinct products
--per year that each country's customers ordered. Use external aliasing. Use a variable to set the country
--name. For example, if the country name is France, the query should report the number of distinct
--products ordered by French customers for the years 2014, 2015, and 2016.

-- tables used: sales.orderdetails (productid), sales.orders (orderdate, shipcountry)

declare @country as varchar(50) = 'France';

with C (country, shipyear, productid) as
	(select o.shipcountry, year(o.orderdate), od.productid
	 from sales.orders o
		inner join sales.orderdetails od
		on o.orderid = od.orderid 
	 where o.shipcountry = @country),

C2 as(select country, shipyear, productid 
	  from C)

select country, shipyear, count (distinct productid) as products
from C2
group by shipyear, country
order by country;

-- 3. Create a view that shows, for each year, the total dollar amount spent by customers in each country
--for all the years in the database.

drop view if exists Sales.OrderTotalByCountry;
go
create view sales.ordertotalbycountry
as

select distinct o.shipcountry, year(o.orderdate) as orderyear, round(sum(od.unitprice * od.qty * (1 - od.discount)), 2) as ordertotal
from sales.orderdetails od
	inner join sales.orders o
	on od.orderid = o.orderid
group by o.shipcountry, year(o.orderdate);
go

-- 4. Create an inline table valued function that accepts as a parameter a country name and returns a table
--with the distinct products ordered by customers from that country. Products are to be identied by
--both product ID and product name.

drop function if exists Sales.DistinctOrdersByCountry;
go
create function Sales.DistnctOrdersByCountry
	(@cname as varchar(100)) returns table
as
return
	select p.productid, p.productname, o.shipcountry
	from production.products p
		inner join sales.orderdetails od
		on p.productid = od.productid
		inner join sales.orders o
		on od.orderid = o.orderid
	where o.shipcountry = @cname;
go

select distinct productid, productname, o.shipcountry
from sales.DistnctOrdersByCountry('USA') as o;

-- 5. Use the CROSS APPLY operator to create a query showing the top three products shipped to customers
--in each country. Your report should contain the name of the country, the product id, the product name,
--and the number of products shipped to customers in that country.

select p.productid, p.productname, o.shipcountry, od.qty
from production.products p
	  inner join sales.orderdetails od
	  on p.productid = od.productid
	  inner join sales.orders o
	  on od.orderid = o.orderid
cross apply
	 (select top (3) productid, productname, shipcountry, qty
	  from production.products p) as b
group by p.productid, p.productname, o.shipcountry, od.qty
order by p.productname, o.shipcountry asc, od.qty desc;


