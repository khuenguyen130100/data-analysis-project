-- Transform DIM_Customer Table,
SELECT 
  a.customerkey AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  a.firstname AS First_Name, 
  --,[MiddleName]
  a.lastname AS Last_Name, 
  a.firstname + ' ' + a.lastname AS Full_Name, 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE a.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
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
  a.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  b.city AS Customer_City, 
  b.EnglishCountryRegionName AS Customer_Region
INTO  [AdventureWorksDW2022].[dbo].[Dim_Customer]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS a 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS b 
  ON a.GeographyKey = b.GeographyKey 
ORDER BY 
  CustomerKey ASC 

