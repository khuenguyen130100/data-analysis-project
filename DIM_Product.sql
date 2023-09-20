-- Transform DIM_Product Table --

ALTER TABLE [AdventureWorksDW2022].[dbo].[DimProduct]
ALTER COLUMN Status NVARCHAR(8)

SELECT 
  c.ProductKey, 
  --,[ProductAlternateKey]
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  c.EnglishProductName AS Product_Name, 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  d.EnglishProductSubcategoryName AS Sub_Category, 
  e.EnglishProductCategoryName AS Product_Category, 
  c.Color AS Product_Color, 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  c.Size AS Product_Size, 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  c.ProductLine AS Product_Line, 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  c.ModelName AS Product_Model_Name, 
  --,[LargePhoto]
  c.EnglishDescription AS Product_Description, 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL (c.Status, 'Outdated') AS Product_Status 
INTO [AdventureWorksDW2022].[dbo].[Dim_Product] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS c 
  LEFT JOIN  [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS d ON c.ProductSubcategoryKey = d.ProductSubcategoryKey 
  LEFT JOIN  [AdventureWorksDW2022].[dbo].[DimProductCategory] AS e ON d.ProductCategoryKey = e.ProductCategoryKey 
ORDER BY 
  c.ProductKey ASC
 