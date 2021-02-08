.echo on
.headers on

-- Name: Brandon Scott
-- File: tsql-ex02.sql
-- Date: January 21, 2021

-- 1. List the company name, the contact name and the country of all customers in Poland.
select companyname, contactname, country from customers where country like '%Poland%';

-- 2. List the order ID, the order date, and the desitnation city of all orders shipped to Berlin.
select orderid, orderdate, shipcity from orders where shipcity like '%Berlin%';

-- 3. How many boxes of Filo Mix do we have in stock?
select productid, productname, quantityperunit * unitsinstock as total_boxes from products where productname like '%Filo Mix%';

-- 4. List the telephone numbers of all of our shippers.
select * from shippers;

-- 5. Who is our oldest employee? Whos is our youngest employee?
select employeeid, lastname, firstname, min(birthdate) from employees;
select employeeid, lastname, firstname, max(birthdate) from employees;

-- 6. List the suppliers where the owner of the supplier is also the sales contact.
select supplierid, contactname, contacttitle from suppliers where contacttitle like '%owner%';

-- 7. Mailing Labels:
select contacttitle, contactname ||'
   '|| companyname ||'
   '|| address ||'
   '|| city, postalcode, country ||'
   '|| ' ' ||'
   '|| ' ' from customers;

-- 8. Telephone Book:
select substr(contactname, instr(contactname, ' ')) || ',' || ' ' || substr(contactname, instr(contactname, 1), (instr(contactname, ' ')-1)) || '     ' || companyname || '   ' || phone from customers;