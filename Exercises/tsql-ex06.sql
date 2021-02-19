-- Name: Brandon Scott
-- File: tsql-ex06.sql
-- Date: February 16, 2021

--You must use SQL Server to complete this exercise. Complete the following tasks. Look in the ISTA420/data/cctext directory on my Github account. You will find eight csv files and one database diagram as a pdf file. Invoke SSMS, and complete the following steps.

--Your deliverable should be a plain text SQL script file (.sql) that contains a header showing your name, the name of the assignment, and the date. The body of the text file should echo the SQL statement you use to complete each step of the exercise and the results of the query.

--1. Create an appropriate table schema for all data files (the text files). Include primary and foreign keys, plus any other constraints that you feel are necessary.
--2. Import the CSV data into the tables you just created.

use ex06;
go
drop table if exists dbo.customers;
go
create table dbo.customers(
	customerNumber varchar(50)
		constraint PK_customers primary key,
	customerName varchar(50),
	contactLastName varchar(50),
	contactFirstName varchar(50),
	phone varchar(50),
	addressLine1 varchar(50),
	addressLine2 varchar(50),
	city varchar(50),
	state varchar(50),
	postalCode varchar(50),
	country varchar(50),
	salesRepEmployeeNumber varchar(50),
	creditLimit float);
go
bulk insert dbo.customers from 'C:\Users\wwstudent\MSSA2021\Database\customers.csv'
	with
	(firstrow = 1,
	format = 'csv',
	fieldquote = '"',
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
	);
go
drop table if exists dbo.employees;
go
create table dbo.employees(
	employeeNumber varchar(50)
		constraint PK_employees primary key,
	lastName varchar(50),
	firstName varchar(50),
	extension varchar(50),
	email varchar(50),
	officeCode varchar(50),
	reportsTo varchar(50),
	jobTitle varchar(50));
go
bulk insert dbo.employees from 'C:\Users\wwstudent\MSSA2021\Database\employees.csv'
	with
	(firstrow = 1,
	format = 'csv',
	fieldquote = '"',
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
	);
go
drop table if exists dbo.offices;
go
create table dbo.offices(
	officeCode int identity (1,1)
		constraint PK_offices primary key,
	city varchar(50),
	phone varchar(50),
	addressLine1 varchar(50),
	addressLine2 varchar(50),
	state varchar(50),
	country varchar(50),
	postalCode varchar(50),
	territory varchar(50));
go
bulk insert dbo.offices from 'C:\Users\wwstudent\MSSA2021\Database\offices.csv'
	with
	(firstrow = 1,
	format = 'csv',
	fieldquote = '"',
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '\n'
	);
go
drop table if exists dbo.orderdetails;
go
create table dbo.orderdetails(
	orderNumber varchar(50)
		constraint FK_orderdetials foreign key
			references orders (orderNumber),
	productCode varchar(50)
		constraint FK_orderdetails foreign key
			references products (productCode),
	quantityOrdered varchar(50),
	priceEach float,
	orderLineNumber int);
go
bulk insert dbo.orderdetails from 'C:\Users\wwstudent\MSSA2021\Database\orderdetails.csv'
	with
		(firstrow = 1,
		format = 'csv',
		fieldquote = '"',
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
		);
go
drop table if exists dbo.orders;
go
create table dbo.orders(
	orderNumber varchar(50)
		constraint PK_orders primary key,
	orderDate varchar(50),
	requiredDate varchar(50),
	shippedDate varchar(50),
	status varchar (50),
	comments varchar(500),
	customerNumber varchar(50)
		constraint FK_orders foreign key
			references customers (customerNumber));
go
bulk insert dbo.orders from 'C:\Users\wwstudent\MSSA2021\Database\orders.csv'
	with
		(firstrow = 1,
		format = 'csv',
		fieldquote = '"',
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
		);
go
drop table if exists dbo.payments;
go
create table dbo.payments(
	customerNumber varchar(50)
		constraint FK_payments foreign key
			references customers (customerNumber),
	checkNumber varchar(50)
		constraint PK_payments primary key,
	paymentDate varchar(50),
	amount float);
go
bulk insert dbo.payments from 'C:\Users\wwstudent\MSSA2021\Database\payments.csv'
	with
		(firstrow = 1,
		format = 'csv',
		fieldquote = '"',
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
		);
go
drop table if exists dbo.productlines;
go
create table dbo.productlines(
	productLine varchar(50)
		constraint PK_productlines primary key,
	textDescription varchar(1000),
	htmlDescription varchar(500),
	image varchar(50));
go
bulk insert dbo.productlines from 'C:\Users\wwstudent\MSSA2021\Database\productlines.csv'
	with
		(firstrow = 1,
		format = 'csv',
		fieldquote = '"',
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
		);
go
drop table if exists dbo.products
go
create table dbo.products(
	productCode varchar(50)
		constraint PK_products primary key,
		productName varchar(150),
		productLine varchar(50)
			constraint FK_productline foreign key
				references productlines (productLine),
		productScale varchar(50),
		productVendor varchar(50),
		productDescription varchar(1000),
		quantityInStock varchar(50),
		buyPrice float,
		MSRP float);
go
bulk insert dbo.products from 'C:\Users\wwstudent\MSSA2021\Database\products.csv'
	with
		(firstrow = 1,
		format = 'csv',
		fieldquote = '"',
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
		);

--3. Perform the following queries:
--	(a) How many distinct products does ClassicModels sell?
select distinct count(productCode) as total
from products;

--	total
--	110

--	(b) Report the name and city of customers who don't have sales representatives?
select c.customerName, c.city
from customers c
where salesRepEmployeeNumber like 'Null';

--Havel & Zbyszek Co	Warszawa
--Porto Imports Co.	Lisboa
--Asian Shopping Network, Co	Singapore
--Natn++rlich Autos	Cunewalde
--ANG Resellers	Madrid
--Messner Shopping Network	Frankfurt
--Franken Gifts, Co	Mn++nchen
--BG&E Collectables	Fribourg
--Schuyler Imports	Amsterdam
--Der Hund Imports	Berlin
--Cramer Spezialitn++ten, Ltd	Brandenburg
--Asian Treasures, Inc.	Cork
--SAR Distributors, Co	Chempet
--Kommission Auto	Mn++nster
--Lisboa Souveniers, Inc	Lisboa
--Stuttgart Collectable Exchange	Stuttgart
--Feuer Online Stores, Inc	Leipzig
--Warburg Exchange	Aachen
--Anton Designs, Ltd.	Madrid
--Mit Vergnn++gen & Co.	Mannheim
--Kremlin Collectables, Co.	Saint Petersburg
--Raanan Stores, Inc	Herzlia

--	(c) What are the names of executives with VP or Manager in their title? Use the CONCAT function to combine the employee's first name and last name into a single field for reporting.
select concat(firstName, ' ', lastName) as name, jobTitle
from employees
where jobTitle like '%VP%' or jobTitle like'%Manager%';

--Mary Patterson	VP Sales
--Jeff Firrelli	VP Marketing
--William Patterson	Sales Manager (JAPAN, APAC)
--Gerard Bondur	Sale Manager (EMEA)
--Anthony Bow	Sales Manager (NA)

--	(d) Which orders have a value greater than $5,000?
select orderNumber, amount
from orders o
inner join payments p on
o.customerNumber = p.customerNumber
where p.amount > 5000;

--1230 rows returned

--	(e) Report the account representative for each customer.
select customerNumber, customerName, concat(contactFirstName, ' ', contactLastName) as name
from customers;

--customerNumber	customerName	name
--103	Atelier graphique	Carine  Schmitt
--112	Signal Gift Stores	Sue King
--114	Australian Collectors, Co.	Peter Ferguson
--119	La Rochelle Gifts	Janine  Labrune
--121	Baane Mini Imports	Jonas  Bergulfsen
--124	Mini Gifts Distributors Ltd.	Valarie Nelson
--125	Havel & Zbyszek Co	Zbyszek  Piestrzeniewicz
--128	Blauer See Auto, Co.	Roland Keitel
--129	Mini Wheels Co.	Julie Murphy
--131	Land of Toys Inc.	Kwai Yu
--141	Euro+ Shopping Channel	Diego  Freyre
--144	Volvo Model Replicas, Co	Christina  Berglund
--145	Danish Wholesale Imports	Jytte  Petersen
--146	Saveley & Henriot, Co.	Mary  Saveley
--148	Dragon Souveniers, Ltd.	Eric Natividad
--151	Muscle Machine Inc	Jeff Young
--157	Diecast Classics Inc.	Kyung Yu
--161	Technics Stores Inc.	Juri Hirano
--166	Handji Gifts& Co	Wendy Victorino
--167	Herkku Gifts	Veysel Oeztan
--168	American Souvenirs Inc	Sue Franco
--169	Porto Imports Co.	Isabel  de Castro
--171	Daedalus Designs Imports	Martine  Rancn++
--172	La Corne D'abondance, Co.	Marie Bertrand
--173	Cambridge Collectables Co.	Kyung Tseng
--175	Gift Depot Inc.	Julie King
--177	Osaka Souveniers Co.	Mory Kentary
--181	Vitachrome Inc.	Michael Frick
--186	Toys of Finland, Co.	Matti Karttunen
--187	AV Stores, Co.	Victoria Ashworth
--189	Clover Collections, Co.	Dean Cassidy
--198	Auto-Moto Classics Inc.	Leslie Taylor
--201	UK Collectables, Ltd.	Elizabeth Devon
--202	Canadian Gift Exchange Network	Yoshi  Tannamuri
--204	Online Mini Collectables	Miguel Barajas
--205	Toys4GrownUps.com	Julie Young
--206	Asian Shopping Network, Co	Brydey Walker
--209	Mini Caravy	Frn++dn++rique  Citeaux
--211	King Kong Collectables, Co.	Michael Sunwoo
--216	Enaco Distributors	Eduardo  Saavedra
--219	Boards & Toys Co.	Leslie Young
--223	Natn++rlich Autos	Horst  Kloss
--227	Heintze Collectables	Palle Ibsen
--233	Qun++bec Home Shopping Network	Jean  Fresnin++re
--237	ANG Resellers	Alejandra  Camino
--239	Collectable Mini Designs Co.	Valarie Thompson
--240	giftsbymail.co.uk	Helen  Bennett
--242	Alpha Cognac	Annette  Roulet
--247	Messner Shopping Network	Renate  Messner
--249	Amica Models & Co.	Paolo  Accorti
--250	Lyon Souveniers	Daniel Da Cunha
--256	Auto Associn++s & Cie.	Daniel  Tonini
--259	Toms Spezialitn++ten, Ltd	Henriette  Pfalzheim
--260	Royal Canadian Collectables, Ltd.	Elizabeth  Lincoln
--273	Franken Gifts, Co	Peter  Franken
--276	Anna's Decorations, Ltd	Anna O'Hara
--278	Rovelli Gifts	Giovanni  Rovelli
--282	Souveniers And Things Co.	Adrian Huxley
--286	Marta's Replicas Co.	Marta Hernandez
--293	BG&E Collectables	Ed Pon
--298	Vida Sport, Ltd	Michael  Holz
--299	Norway Gifts By Mail, Co.	Jan Klaeboe
--303	Schuyler Imports	Bradley Schuyler
--307	Der Hund Imports	Maria  Anders
--311	Oulu Toy Supplies, Inc.	Pirkko Koskitalo
--314	Petit Auto	Catherine  Dewey
--319	Mini Classics	Steve Frick
--320	Mini Creations Ltd.	Wing C Tam
--321	Corporate Gift Ideas Co.	Julie Brown
--323	Down Under Souveniers, Inc	Mike Graham
--324	Stylish Desk Decors, Co.	Ann  Brown
--328	Tekni Collectables Inc.	William Brown
--333	Australian Gift Network, Co	Tony Calaghan
--334	Suominen Souveniers	Kalle Suominen
--335	Cramer Spezialitn++ten, Ltd	Philip  Cramer
--339	Classic Gift Ideas, Inc	Francisca Cervantes
--344	CAF Imports	Jesus Fernandez
--347	Men 'R' US Retailers, Ltd.	Michael Chandler
--348	Asian Treasures, Inc.	Patricia  McKenna
--350	Marseille Mini Autos	Laurence  Lebihan
--353	Reims Collectables	Paul  Henriot
--356	SAR Distributors, Co	Armand Kuger
--357	GiftsForHim.com	Wales MacKinlay
--361	Kommission Auto	Karin Josephs
--362	Gifts4AllAges.com	Juri Yoshido
--363	Online Diecast Creations Co.	Valarie Young
--369	Lisboa Souveniers, Inc	Lino  Rodriguez
--376	Precious Collectables	Yang  Wang
--379	Collectables For Less Inc.	Allen Nelson
--381	Royale Belge	Pascale  Cartrain
--382	Salzburg Collectables	Georg  Pipps
--385	Cruz & Sons Co.	Arnold Cruz
--386	L'ordine Souveniers	Maurizio  Moroni
--398	Tokyo Collectables, Ltd	Akiko Shimamura
--406	Auto Canal+ Petit	Dominique Perrier
--409	Stuttgart Collectable Exchange	Rita  Mn++ller
--412	Extreme Desk Decorations, Ltd	Sarah McRoy
--415	Bavarian Collectables Imports, Co.	Michael Donnermeyer
--424	Classic Legends Inc.	Maria Hernandez
--443	Feuer Online Stores, Inc	Alexander  Feuer
--447	Gift Ideas Corp.	Dan Lewis
--448	Scandinavian Gift Ideas	Maria  Larsson
--450	The Sharp Gifts Warehouse	Sue Frick
--452	Mini Auto Werke	Roland  Mendel
--455	Super Scale Inc.	Leslie Murphy
--456	Microscale Inc.	Kee Kuo
--458	Corrida Auto Replicas, Ltd	Martn++n  Sommer
--459	Warburg Exchange	Sven  Ottlieb
--462	FunGiftIdeas.com	Violeta Benitez
--465	Anton Designs, Ltd.	Carmen Anton
--471	Australian Collectables, Ltd	Sean Connery
--473	Frau da Collezione	Franco Ricotti
--475	West Coast Collectables Co.	Steve Thompson
--477	Mit Vergnn++gen & Co.	Hanna  Moos
--480	Kremlin Collectables, Co.	Alexander  Semenov
--481	Raanan Stores, Inc	Raanan Altagar,G M
--484	Iberia Gift Imports, Corp.	Josn++ Pedro  Roel
--486	Motor Mint Distributors Inc.	Rosa Hernandez
--487	Signal Collectibles Ltd.	Sue Taylor
--489	Double Decker Gift Stores, Ltd	Thomas  Hardy
--495	Diecast Collectables	Valarie Franco
--496	Kelly's Gift Shop	Tony Snowden

--	(f) Report total payments for Atelier graphique.
select c.customerNumber, customerName, sum(amount) as total
from customers c
inner join payments p on
c.customerNumber = p.customerNumber
where customerName like '%Atelier Graphique%'
group by c.customerNumber, customerName;

--customerNumber	customerName	total
--103	Atelier graphique	24179.96

--	(g) Report the total payments by date.
select paymentDate, sum(amount) as total
from payments
group by paymentDate;

-- 229 rows returned

--	(h) Report the products that have not been sold.
select distinct productName
from products p
where p.productCode not in
	(select productCode
	from orderdetails);

--productName
--1985 Toyota Supra

--	(i) List the amount paid by each customer.
--	(j) List products sold by order date.
--	(k) List the order dates in descending order for orders for the 1940 Ford Pickup Truck.
--	(l) List the names of customers and their corresponding order number where a particular order from that customer has a value greater than $25,000?
--	(m) Compute the commission for each sales representative, assuming the commission is 5% of them value of an order. Sort by employee last name and first name.
--	(n) What is the dierence in days between the most recent and oldest order date in the Orders file?
--	(o) Compute the average time between order date and ship date for each customer ordered by the largest difference.
