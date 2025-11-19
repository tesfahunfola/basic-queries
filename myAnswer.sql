use northwind;
select productId, productName, unitPrice, unitsInStock, unitsOnOrder
from Products
where unitsInStock = 0 and unitsOnOrder >= 1
order by productName
;


-- Northwind
-- Find customers whose company name starts with “A”.
USE northwind;
select *
from customers
where CompanyName like "A%";

-- List actors with no middle name (if applicable in dataset).
USE sakila
SELECT *
from actor
where middle_name is NULL;

-- Sakila
-- Show distinct film ratings.
use sakila;
select distinct rating
from film;


-- Show the maximum freight amount from orders.
USE northwind;
select max(Freight)
from orders;

-- Find the average film length.
use sakila;
select avg(length)
from film;
