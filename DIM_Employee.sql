-- Transform DIM_Employee Table --

SELECT 
  EmployeeKey, 
  --,[ParentEmployeeKey]
  --,[EmployeeNationalIDAlternateKey]
  --,[ParentEmployeeNationalIDAlternateKey] 
  SalesTerritoryKey, 
  FirstName AS First_Name, 
  LastName AS Last_Name, 
  FirstName + ' ' + LastName AS Full_Name, 
  --,[MiddleName]
  --,[NameStyle] 
  Title, 
  HireDate,
  --,[BirthDate]
  LoginID, 
  EmailAddress, 
  Phone,
  --,[MaritalStatus]
  --,[EmergencyContactName]
  --,[EmergencyContactPhone]
  --,[SalariedFlag]
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[PayFrequency]
  --,[BaseRate]
  --,[VacationHours]
  --,[SickLeaveHours]
  --,[CurrentFlag]
  --,[SalesPersonFlag]
  --,[DepartmentName] 
  StartDate, 
  EndDate, 
  Status
  --,[EmployeePhoto]
INTO [AdventureWorksDW2022].[dbo].[DIM_Employee]
FROM [AdventureWorksDW2022].[dbo].[DimEmployee]
WHERE [SalesTerritoryKey] <> 11 -- Sales representative has sales territory key ranging from 1 to 10
ORDER BY EmployeeKey 


      