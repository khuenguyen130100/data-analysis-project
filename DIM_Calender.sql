-- Transform DIM_Calendar Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS Week,  
  LEFT([EnglishMonthName], 3) AS Month, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  --[MonthNumberOfYear] 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
INTO  [AdventureWorksDW2022].[dbo].[Dim_Calendar]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCalendar] 
WHERE 
  CalendarYear >= 2021

  SELECT * FROM [AdventureWorksDW2022].[dbo].[Dim_Calendar]
