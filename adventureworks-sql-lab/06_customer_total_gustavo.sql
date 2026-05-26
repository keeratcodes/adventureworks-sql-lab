-- Query 6 — Total sales for Gustavo Achong

SELECT 
    p.FirstName,
    p.LastName,
    SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c 
    ON soh.CustomerID = c.CustomerID
JOIN Person.Person p 
    ON c.PersonID = p.BusinessEntityID
WHERE p.FirstName = 'Gustavo' 
  AND p.LastName = 'Achong'
GROUP BY p.FirstName, p.LastName;