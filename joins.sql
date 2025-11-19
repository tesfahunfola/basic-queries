USE northwind;
select ProductID, productName, unitPrice, categoryName
from products as p
join categories as c
on p.CategoryID = c.CategoryID
order by ProductName, CategoryName;


-- List the product id, product name, unit price and supplier name of all 
-- products that cost more than $75.  Order by product name. -- 
select ProductID, productName, unitPrice, CompanyName
from products as p
join suppliers as s
on p.SupplierID = s.supplierID
where UnitPrice > 75
order by ProductName
;

-- . List the product id, product name, unit price, category name, and supplier 
-- name of every product.  Order by product name. 
select ProductID, productName, unitPrice, categoryName, CompanyName
from products as p
join categories as c
on p.CategoryID = c. CategoryID
join suppliers as s
on p.SupplierID = s.supplierID
order by ProductName
;

-- 4. What is the product name(s) and categories of the most expensive 
-- products?  HINT:  Find the max price in a subquery and then use that in 
-- your more complex query that joins products with categories. 
select ProductID, productName, unitPrice, categoryName
from products as p
join categories as c
on p.CategoryID = c.CategoryID
where UnitPrice = (
select max(UnitPrice) from products)
order by ProductName
;

-- 5. List the order id, ship name, ship address, and shipping company name of 
-- every order that shipped to Germany. 
select orderid, shipname, shipaddress, companyName
from orders as o
join shippers as s
on o.ShipVia = s.ShipperID
where ShipCountry = "Germany"

;
-- List the order id, order date, ship name, ship address of all orders that 
-- ordered "Sasquatch Ale"?  

USE northwind;
select od.orderid, OrderDate, shipname, shipaddress
from orders as o
JOIN `Order Details` as od
on o.orderID = od.orderID
join products as p
on p.productID = od.productID
where productName = "Sasquatch Ale"

;
