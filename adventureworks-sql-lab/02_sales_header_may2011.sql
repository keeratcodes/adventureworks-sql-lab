-- Query 2 — Sales Header orders in May 2011

SELECT *
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 
  AND MONTH(OrderDate) = 5;