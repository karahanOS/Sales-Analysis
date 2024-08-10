-- Cleansed DIM Calender Table 
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName]  AS Month
	  ,LEFT ([EnglishMonthName],3) AS MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthN0  
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      ,[CalendarSemester] AS Semester
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >= 2019 AND CalendarYear <= 2021 -- I used this interval because our Sales Budget CSV is contains data from this interval.