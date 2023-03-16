/****** Script for SelectTopNRows command from SSMS  ******/
SELECT[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS First_Name
      --,[MiddleName]
      ,[LastName] as Last_Name
	  ,[FirstName]+' '+[LastName] as Full_Name,
	Case Gender When 'M' THEN 'Male' When 'F' Then 'Female' END AS Gender
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
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
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,Geo.City as Customer_City ---Join Geography Table to see customer city
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
  LEFT JOIN  dbo.DimGeography as Geo ON Geo.GeographyKey=[DimCustomer].GeographyKey
  ORDER BY 
  CustomerKey ASC ---Ordered by customer key 