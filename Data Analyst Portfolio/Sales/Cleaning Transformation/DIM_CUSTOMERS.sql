SELECT 
	c.customerkey AS CustomerKey, 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
	c.firstname AS [First Name], 
  --,[MiddleName]
	c.lastname AS [Last Name], 
	c.firstname + ' ' + lastname AS [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
	CASE c.gender When 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
	c.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
	g.City AS [Customer City]--Joined in Customer City from Geography Table
FROM 
  dbo.dimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
Order BY 
  CustomerKey ASC-- Ordered List Customerkey