--Cleansed DimProduct Table 
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [ Product Item Code] --,p.[ProductSubcategoryKey] 
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] AS [Product Name], 
  psc.EnglishProductSubcategoryName AS [Sub Category] -- Joined From SubCategory Table  
  , 
  pc.EnglishProductCategoryName AS [Product Category] -- Joined From Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,p.[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  p.[Color] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  p.[Size] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  p.[ProductLine] AS [Product Line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  p.[ModelName] AS [Model Name] --,[LargePhoto]
  , 
  p.[EnglishDescription] AS [English Description] --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL(p.[Status], 'Outdated') AS Status 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN DimProductSubcategory AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory AS pc ON psc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
