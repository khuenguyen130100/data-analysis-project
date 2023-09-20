-- Transform Fact_InternetSales Table --
SELECT 
  ProductKey, 
  OrderDateKey, 
  --DueDateKey, 
  --ShipDateKey, 
  CustomerKey, 
  --,[PromotionKey]
  --,[CurrencyKey]
  SalesTerritoryKey,
  --[EmployeeKey],
  SalesOrderNumber, 
  --,[SalesOrderLineNumber]
  --,[RevisionNumber]
  OrderQuantity AS Oder_Quantity,
  UnitPrice AS Product_Price,
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  [DiscountAmount] AS Discount_Amount,
  [ProductStandardCost] AS Product_Cost,
  --,[TotalProductCost] 
  [TaxAmt] AS Tax_Amount
  --,[Freight]
  --,[CarrierTrackingNumber]
  --,[CustomerPONumber]
  --,[OrderDate]
  --,[DueDate]
  --,[ShipDate]
INTO  [AdventureWorksDW2022].[dbo].[Fact_InternetSales]
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE 
  LEFT(OrderDateKey, 4) >= 2021
ORDER BY 
  OrderDateKey ASC
 