-- Name: Brandon Scott
-- File: tsql-lab06.sql
-- Date: February 8, 2021

use tsqlv4;

-- 1. Find employee IDs who had orders in both January 2016 AND February 2016.

-- Cannot include dates in input queries because the dates are different. Including the dates would return no results.

select o.empid
from sales.orders o
where o.orderdate like '2016-01-%'
intersect
select o1.empid
from sales.orders o1
where o1.orderdate like '2016-02-%';

-- 2. Find employee IDs who had orders in both January 2016 OR February 2016.

select o.empid
from sales.orders o
where o.orderdate like '2016-01-%'
union
select o1.empid
from sales.orders o1
where o1.orderdate like '2016-02-%';

-- 3. Find employee IDs who had orders in January 2016 but NOT February 2016.

select o.empid
from sales.orders o
where o.orderdate like '2016-01-%'
except
select o1.empid
from sales.orders o1
where o1.orderdate like '2016-02-%';

-- 4. Find cities and countries where we have both customers and employees.

select e.city, e.country
from hr.employees e
intersect
select c.city, c.country
from sales.customers c;

-- 5. Find cities and countries where we have either customers or employees.

select e.city, e.country
from hr.employees e
union
select c.city, c.country
from sales.customers c;

-- 6. Find cities and countries where we have customers but not employees.

select c.city, c.country
from sales.customers c
except
select e.city, e.country
from hr.employees e;

-- 7. Find cities and countries where we have employees but not customers.

select e.city, e.country
from hr.employees e
except
select c.city, c.country
from sales.customers c;

-- 8. Find cities and countries where we have employees but not customers and
--    cities and countries where we have customers but not employees.

(select e.city, e.country
from hr.employees e
except
select c.city, c.country
from sales.customers c)
union
(select c.city, c.country
from sales.customers c
except
select e.city, e.country
from hr.employees e);