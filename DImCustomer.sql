--Cleansed DIM_Customer Table
SELECT 
  [CustomerKey], 
  g.City --,[CustomerAlternateKey] -- Joined in Customer Table from DIMGeography Table
  --,[Title]
  , 
  c.[FirstName] AS [First Name] --,[MiddleName]
  , 
  c.[LastName] AS [Last Name], 
  c.FirstName + ' ' + c.LastName AS [Full Name] --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender --,[EmailAddress]
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
  --,c.[AddressLine1]
  --,c.[AddressLine2]
  --,[Phone]
  , 
  [DateFirstPurchase] --,[CommuteDistance]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered List By Customer Key
