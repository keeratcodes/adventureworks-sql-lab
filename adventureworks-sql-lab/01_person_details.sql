RESTORE DATABASE AdventureWorks2012
FROM DISK = '/var/opt/mssql/data/AdventureWorks2012.bak'
WITH 
  MOVE 'AdventureWorks2012' 
    TO '/var/opt/mssql/data/AdventureWorks2012.mdf',
  MOVE 'AdventureWorks2012_log' 
    TO '/var/opt/mssql/data/AdventureWorks2012.ldf',
    REPLACE;

USE AdventureWorks2012;


-- Query 1 — Person details (email, phone, phone type)
SELECT 
    p.FirstName,
    p.LastName,
    ea.EmailAddress,
    pp.PhoneNumber,
    pnt.Name AS PhoneNumberType
FROM Person.Person p
JOIN Person.EmailAddress ea 
    ON p.BusinessEntityID = ea.BusinessEntityID
JOIN Person.PersonPhone pp 
    ON p.BusinessEntityID = pp.BusinessEntityID
JOIN Person.PhoneNumberType pnt 
    ON pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID;