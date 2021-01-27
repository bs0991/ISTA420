.headers on

-- Name: Brandon Scott
-- File: tsql-quiz02.sql
-- Date: January 20, 2021

-- 1. How many seafood products do we have?
select count (*) from products where categoryID = 8;
count (*)
12

-- 2. What are the names and IDs of our seafood products?
select productid, productname from products where categoryID = 8;
ProductID|ProductName
10|Ikura
13|Konbu
18|Carnarvon Tigers
30|Nord-Ost Matjeshering
36|Inlagd Sill
37|Gravad lax
40|Boston Crab Meat
41|Jack's New England Clam Chowder
45|Rogede sild
46|Spegesild
58|Escargots de Bourgogne
73|Röd Kaviar

-- 3. What is the average price of our seafood products?
select avg (unitprice) from products where categoryID = 8;
avg (unitprice)
20.6825

-- 4. What is our highest priced seafood product, and how much does it cost?
select productid, productname, max (unitprice) from products where categoryID = 8;
ProductID|ProductName|max (unitprice)
18|Carnarvon Tigers|62.5

-- 5. What is our lowest priced seafood product, and how much does it cost?
select productid, productname, min (unitprice) from products where categoryID = 8;
ProductID|ProductName|min (unitprice)
13|Konbu|6.0

-- 6. How many customers do we have in Denmark?
select count (*) from customers where country like ('%Denmark%');
count (*)
2

-- 7. What are the customer names and IDs of our Danish customers?
select customerid, contactname from customers where country like ('%Denmark%');
CustomerID|ContactName
SIMOB|Jytte Petersen
VAFFE|Palle Ibsen

-- 8. Which customers do NOT have a fax number? This one is very tricky!
select customerid, contactname, fax from customers where (length (fax) > 14) or (length (fax) < 11);
CustomerID|ContactName|Fax
-- CustomerID|ContactName|Fax
ANTON|Antonio Moreno|
BLAUS|Hanna Moos|0621-08924
BSBEV|Victoria Ashworth|
CHOPS|Yang Wang|
COMMI|Pedro Afonso|
ERNSH|Roland Mendel|7675-3426
FAMIA|Aria Cruz|
FOLKO|Maria Larsson|
GODOS|José Pedro Freyre|
GOURL|André Fonseca|
GREAL|Howard Snyder|
HUNGO|Patricia McKenna|2967 3333
ISLAT|Helen Bennett|
KOENE|Philip Cramer|
LETSS|Jaime Yorres|
MAGAA|Giovanni Rovelli|035-640231
MORGK|Alexander Feuer|
PARIS|Marie Bertrand|(1) 42.34.22.77
PICCO|Georg Pipps|6562-9723
PRINI|Isabel de Castro|
QUEEN|Lúcia Carvalho|
QUICK|Horst Kloss|
RICAR|Janete Limeira|
RICSU|Michael Holz|
SAVEA|Jose Pavarotti|
SPECD|Dominique Perrier|(1) 47.55.60.20
SUPRD|Pascale Cartrain|(071) 23 67 22 21
THEBI|Liz Nixon|
TORTU|Miguel Angel Paolino|
WARTH|Pirkko Koskitalo|981-443655
WELLI|Paula Parente|
