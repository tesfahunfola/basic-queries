use northwind;
select productId, productName, unitPrice, unitsInStock, unitsOnOrder
from Products
where unitsInStock = 0 and unitsOnOrder >= 1
order by productName
;
