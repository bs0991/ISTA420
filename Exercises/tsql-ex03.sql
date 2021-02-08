.echo on
.headers on
.mode csv

-- Name: Brandon Scott
-- File: tsql-ex03.sql
-- Date: January 26, 2021

-- 1. We have noticed that certain customers prefer to make their orders with certain employees. We want
-- to increase business by encouraging the customer/employee pairs that are more productive, and to
-- channel the pairs that are less productive into other relationships. To this end, we have ordered this
-- query and the following three. First, I need the customer ID, the customer contact name, the employee
-- ID, the employee name, the order ID, the number of orders, and the total amount of each order, where
--the customer/employee pair has produced five or more orders between them, ordered by the dollar
-- amount of the order from highest to lowest. The output needs to be in a comma separated format
-- with strings that include spaces and commas delimited by double quotes. The dollar amount should
-- be formatted as a decimal number with two decimal places.

select c.customerID, c.contactname, e.employeeid, (e.firstname || ' ' || e.lastname) as emp_name, o.orderID, count(od.orderid) as num_orders, round(sum (od.unitprice * od.quantity * (1 - od.discount)), 2) as order_total from orders o join customers c on o.customerid = c.customerid join employees e on o.employeeid = e.employeeid join order_details od on o.orderid = od.orderid group by o.orderid having num_orders >= 5 order by order_total desc;

-- 2. Second, I want the least productive pairs with the same columns. The total of orders should be less than three, the dollar amount of the order is less than $50.00, and the orders are ranked by increasing dollar amounts, starting with the least order.

select c.customerID, c.contactname, e.employeeid, (e.firstname || ' ' || e.lastname) as emp_name, o.orderID, count(od.orderid) as num_orders, round(sum (od.unitprice * od.quantity * (1 - od.discount)), 2) as order_total from orders o join customers c on o.customerid = c.customerid join employees e on o.employeeid = e.employeeid join order_details od on o.orderid = od.orderid group by o.orderid having num_orders < 3 and order_total < 50 order by order_total asc;

-- 3. Third, I need the most productive pairs as in the first report above, omitting the orderID but ranked by the average amount from highest to lowest of all orders by the customer/employee pair. Include only pairs where the amount of the average exceeds $2500.00.

select c.customerID, c.contactname, e.employeeid, (e.firstname || ' ' || e.lastname) as emp_name, count(od.orderid) as num_orders, (round(avg(od.unitprice * od.quantity * (1 - od.discount)), 2)) as order_avg from orders o join customers c on o.customerid = c.customerid join employees e on o.employeeid = e.employeeid join order_details od on o.orderid = od.orderid group by o.orderid having order_avg > 2500 order by order_avg desc;

-- 4. Finally, I need the least productive pairs as ranked by the average order amount, from lowest to highest, formatted as above. Omit the orderID. Include only pairs where the average order amount is less than $50.00.

select c.customerID, c.contactname, e.employeeid, (e.firstname || ' ' || e.lastname) as emp_name, count(od.orderid) as num_orders, (round(avg(od.unitprice * od.quantity * (1 - od.discount)), 2)) as order_avg from orders o join customers c on o.customerid = c.customerid join employees e on o.employeeid = e.employeeid join order_details od on o.orderid = od.orderid group by o.orderid having order_avg < 50 order by order_avg asc;

-- 5. Please create a report with the orderID, the customerID, the customer name, the customer country, and the dollar amount of the order, sorted alphabetically by country and numerically from highest to lowest by the dollar amount of the order, where the order total exceeds $5,000.00.

select o.orderid, c.customerid, c.contactname, c.country, round(sum(od.unitprice * od.quantity * (1 - od.discount)), 2) as order_total from orders o join customers c on o.customerid = c.customerid join order_details od on o.orderid = od.orderid group by o.orderid having order_total > 5000 order by c.country asc, order_total desc;

-- 6. I want to know the unique (distinct) cities, regions, and postal codes: (a) where we have both customers and employees, (b) where we have customers but no employees AND both customers and employees, and (c) where we have employees but no customers AND both customers and employees. Write three queries, using inner and outer joins.

-- (a)
 select distinct c.city as customer_city, c.region as customer_region, c.postalcode as customer_postalcode, e.city as employee_city, e.region as employee_region, e.postalcode as employee_postalcode from customers c join employees e on c.city = e.city and c.region = e.region and c.postalcode = e.postalcode where c.city = e.city group by c.city;
 
 -- (b)
 select distinct c.city as customer_city, c.region as customer_region, c.postalcode as customer_postalcode, e.city as employee_city, e.region as employee_region, e.postalcode as employee_postalcode from customers c left join employees e on c.city = e.city and c.region = e.region and c.postalcode = e.postalcode where c.city = e.city group by c.city;
 
 -- (c)
  select distinct c.city as customer_city, c.region as customer_region, c.postalcode as customer_postalcode, e.city as employee_city, e.region as employee_region, e.postalcode as employee_postalcode from employees e left join customers c on e.city = c.city and e.region = c.region and e.postalcode = c.postalcode where e.city = c.city group by e.city;