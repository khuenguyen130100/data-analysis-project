-- Transform and consolidate into a single table named as InternetSales --
SELECT 
  a.[OrderDateKey],
  --,[DueDateKey]
  --,[ShipDateKey]
  a.[CustomerKey],
  --,[PromotionKey]
  --,[CurrencyKey]
  a.[SalesTerritoryKey], 
  a.[ProductKey], 
  d.EnglishProductName AS Product_Name, 
  f.EnglishProductCategoryName AS Product_Category, 
  c.EnglishCountryRegionName AS Region, 
  a.[SalesOrderNumber],
  --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  a.[OrderQuantity], 
  a.[UnitPrice],
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  a.[DiscountAmount], 
  a.[ProductStandardCost], 
  a.[TotalProductCost], 
  a.[SalesAmount],
  --,[TaxAmt]
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  a.[OrderDate]
  --,[DueDate]
  --,[ShipDate]
  INTO [AdventureWorksDW2022].[dbo].[InternetSales] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] AS a 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimSalesTerritory] AS b ON a.SalesTerritoryKey = b.SalesTerritoryKey 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS c ON b.SalesTerritoryKey = c.SalesTerritoryKey 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProduct] AS d ON a.ProductKey = d.ProductKey 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS e ON d.ProductSubcategoryKey = e.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS f ON e.ProductCategoryKey = f.ProductCategoryKey 
WHERE 
  YEAR(OrderDate) BETWEEN 2020 AND 2022 
ORDER BY 
  OrderDateKey
