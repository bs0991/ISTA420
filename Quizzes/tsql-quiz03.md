.headers on

-- Name: Brandon Scott
-- File: tsql-quiz03.sql
-- Date: January 26, 2021

-- 1. Write a report giving the employee id, first name, last name, and the average amount of all orders by
-- that employee. Use the SQL 92 syntax.
select e.employeeid, e.firstname, e.lastname, avg(od.unitprice * od.quantity) as average_sale from employees e join orders o on e.employeeid = o.employeeid join order_details od on o.orderid = od.orderid group by e.employeeid;
EmployeeID|FirstName|LastName|average_sale
1|Nancy|Davolio|585.923797101449
2|Andrew|Fuller|737.548796680498
3|Janet|Leverling|663.711214953271
4|Margaret|Peacock|595.684404761905
5|Steven|Buchanan|645.878205128205
6|Michael|Suyama|465.464880952381
7|Robert|King|802.818125
8|Laura|Callahan|512.696269230769
9|Anne|Dodsworth|775.364485981308

-- 2. In some cities, we have customers, suppliers, and employees. Write a report that lists the customer’s
-- contact name, the supplier’s contact name, the employee’s name, and the city in which all three are
-- located. Use the SQL 92 syntax.
select c.contactname as customer_contact, s.contactname as supplier_contact, (e.firstname || ' ' || e.lastname) as employee_name, e.city from customers c join suppliers s on c.city = s.city join employees e on s.city = e.city;
customer_contact|supplier_contact|employee_name|City
Thomas Hardy|Charlotte Cooper|Steven Buchanan|London
Thomas Hardy|Charlotte Cooper|Anne Dodsworth|London
Thomas Hardy|Charlotte Cooper|Robert King|London
Thomas Hardy|Charlotte Cooper|Michael Suyama|London
Victoria Ashworth|Charlotte Cooper|Steven Buchanan|London
Victoria Ashworth|Charlotte Cooper|Anne Dodsworth|London
Victoria Ashworth|Charlotte Cooper|Robert King|London
Victoria Ashworth|Charlotte Cooper|Michael Suyama|London
Elizabeth Brown|Charlotte Cooper|Steven Buchanan|London
Elizabeth Brown|Charlotte Cooper|Anne Dodsworth|London
Elizabeth Brown|Charlotte Cooper|Robert King|London
Elizabeth Brown|Charlotte Cooper|Michael Suyama|London
Ann Devon|Charlotte Cooper|Steven Buchanan|London
Ann Devon|Charlotte Cooper|Anne Dodsworth|London
Ann Devon|Charlotte Cooper|Robert King|London
Ann Devon|Charlotte Cooper|Michael Suyama|London
Simon Crowther|Charlotte Cooper|Steven Buchanan|London
Simon Crowther|Charlotte Cooper|Anne Dodsworth|London
Simon Crowther|Charlotte Cooper|Robert King|London
Simon Crowther|Charlotte Cooper|Michael Suyama|London
Hari Kumar|Charlotte Cooper|Steven Buchanan|London
Hari Kumar|Charlotte Cooper|Anne Dodsworth|London
Hari Kumar|Charlotte Cooper|Robert King|London
Hari Kumar|Charlotte Cooper|Michael Suyama|London
