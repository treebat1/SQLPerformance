SELECT * FROM sys.query_store_query_text AS qsqt
WHERE qsqt.query_sql_text = 'SELECT  e.NationalIDNumber,
        p.LastName,
        p.FirstName,
        a.City,
        bea.AddressTypeID
FROM    HumanResources.Employee AS e
JOIN    Person.BusinessEntityAddress AS bea
        ON bea.BusinessEntityID = e.BusinessEntityID
JOIN    Person.Address AS a
        ON a.AddressID = bea.AddressID
JOIN    Person.Person AS p
        ON p.BusinessEntityID = e.BusinessEntityID
WHERE   p.LastName = ''Hamilton''';