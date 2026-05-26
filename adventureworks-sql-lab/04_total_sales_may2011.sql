-- Query 4 — Total sales in May 2011

SELECT 
    SUM(TotalDue) AS TotalSalesMay2011
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 
  AND MONTH(OrderDate) = 5;