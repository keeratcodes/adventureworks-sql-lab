-- Query 5 — Monthly sales in 2011, lowest to highest

SELECT 
    MONTH(OrderDate) AS MonthNumber,
    DATENAME(MONTH, OrderDate) AS MonthName,
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
GROUP BY MONTH(OrderDate), DATENAME(MONTH, OrderDate)
ORDER BY TotalSales ASC;