.headers on

--- Name: Brandon Scott
--- File: lab02b-Scott.sql
--- Date: January 20, 2021

-- 1. Who are our customers in North America?
select customerid, companyname, country from customers where country in ('USA', 'Mexico', 'Canada');
CustomerID|CompanyName|Country
ANATR|Ana Trujillo Emparedados y helados|Mexico
ANTON|Antonio Moreno Taquería|Mexico
BOTTM|Bottom-Dollar Markets|Canada
CENTC|Centro comercial Moctezuma|Mexico
GREAL|Great Lakes Food Market|USA
HUNGC|Hungry Coyote Import Store|USA
LAUGB|Laughing Bacchus Wine Cellars|Canada
LAZYK|Lazy K Kountry Store|USA
LETSS|Let''s Stop N Shop|USA
LONEP|Lonesome Pine Restaurant|USA
MEREP|Mère Paillarde|Canada
OLDWO|Old World Delicatessen|USA
PERIC|Pericles Comidas clásicas|Mexico
RATTC|Rattlesnake Canyon Grocery|USA
SAVEA|Save-a-lot Markets|USA
SPLIR|Split Rail Beer & Ale|USA
THEBI|The Big Cheese|USA
THECR|The Cracker Box|USA
TORTU|Tortuga Restaurante|Mexico
TRAIH|Trail''s Head Gourmet Provisioners|USA
WHITC|White Clover Markets|USA

-- 2. What orders were placed in April, 1998?
select orderdate, orderid from orders where orderdate like ('%1998-04%');
OrderDate|OrderID
1998-04-01|10990
1998-04-01|10991
1998-04-01|10992
1998-04-01|10993
1998-04-02|10994
1998-04-02|10995
1998-04-02|10996
1998-04-03|10997
1998-04-03|10998
1998-04-03|10999
1998-04-06|11000
1998-04-06|11001
1998-04-06|11002
1998-04-06|11003
1998-04-07|11004
1998-04-07|11005
1998-04-07|11006
1998-04-08|11007
1998-04-08|11008
1998-04-08|11009
1998-04-09|11010
1998-04-09|11011
1998-04-09|11012
1998-04-09|11013
1998-04-10|11014
1998-04-10|11015
1998-04-10|11016
1998-04-13|11017
1998-04-13|11018
1998-04-13|11019
1998-04-14|11020
1998-04-14|11021
1998-04-14|11022
1998-04-14|11023
1998-04-15|11024
1998-04-15|11025
1998-04-15|11026
1998-04-16|11027
1998-04-16|11028
1998-04-16|11029
1998-04-17|11030
1998-04-17|11031
1998-04-17|11032
1998-04-17|11033
1998-04-20|11034
1998-04-20|11035
1998-04-20|11036
1998-04-21|11037
1998-04-21|11038
1998-04-21|11039
1998-04-22|11040
1998-04-22|11041
1998-04-22|11042
1998-04-22|11043
1998-04-23|11044
1998-04-23|11045
1998-04-23|11046
1998-04-24|11047
1998-04-24|11048
1998-04-24|11049
1998-04-27|11050
1998-04-27|11051
1998-04-27|11052
1998-04-27|11053
1998-04-28|11054
1998-04-28|11055
1998-04-28|11056
1998-04-29|11057
1998-04-29|11058
1998-04-29|11059
1998-04-30|11060
1998-04-30|11061
1998-04-30|11062
1998-04-30|11063

-- 3. What sauces do we sell?
select productname, productid from products where productname like '%sauce%';
ProductName|ProductID
Northwoods Cranberry Sauce|8
Louisiana Fiery Hot Pepper Sauce|65

-- 4. You sell some kind of dried fruit that I liked very much. What is its name?
select productid, productname from products where productname like '%dried%';
ProductID|ProductName
7|Uncle Bob's Organic Dried Pears
51|Manjimup Dried Apples

-- 5. What employees ship products to Germany in December?
select employeeid, orderdate, shipcountry from orders where orderdate like '%-12-%' and shipcountry like '%Germany%';
EmployeeID|OrderDate|ShipCountry
3|1996-12-23|Germany
1|1996-12-27|Germany
3|1997-12-04|Germany
4|1997-12-05|Germany
3|1997-12-10|Germany
3|1997-12-16|Germany
1|1997-12-22|Germany
6|1997-12-23|Germany
7|1997-12-25|Germany
9|1997-12-26|Germany

-- 6. We have an issue with product 19. I need to know the total amount and the net amount of all orders for product 19 where the customer took a discount.
select orderid, productid, unitprice * quantity as totalamount, (unitprice * quantity) * (1 - discount) as netamount, discount from order_details where productid = 19 and discount > 0;
OrderID|ProductID|totalamount|netamount|Discount
10329|19|73.0|69.35|0.05
10414|19|131.4|124.83|0.05
10421|19|29.2|24.82|0.15
10438|19|109.5|87.6|0.2
10446|19|87.6|78.84|0.1
10555|19|322.0|257.6|0.2
10623|19|138.0|124.2|0.1
10651|19|110.4|82.8|0.25
10681|19|276.0|248.4|0.1
10697|19|64.4|48.3|0.25
10788|19|460.0|437.0|0.05
10803|19|220.8|209.76|0.05
10847|19|110.4|88.32|0.2
11012|19|460.0|437.0|0.05
11076|19|92.0|69.0|0.25




