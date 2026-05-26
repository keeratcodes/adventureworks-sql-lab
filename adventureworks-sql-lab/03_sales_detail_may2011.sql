-- Query 3 — Sales Detail orders in May 2011

SELECT sod.*
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh 
    ON sod.SalesOrderID = soh.SalesOrderID
WHERE YEAR(soh.OrderDate) = 2011 
  AND MONTH(soh.OrderDate) = 5;