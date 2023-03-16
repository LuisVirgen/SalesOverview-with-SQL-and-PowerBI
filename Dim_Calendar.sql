---Cleansed DIM Date_Table
Select Distinct DateKey,
FullDateAlternateKey as Date,
EnglishDayNameOfWeek as Day,
EnglishMonthName as Month,
Left(EnglishMonthName,3) as MonthShort,
MonthNumberOfYear as MonthNo,
CalendarQuarter as Quarter,
CalendarYear as Year
From AdventureWorksDW2019.dbo.DimDate
---Select only year 2019
Where CalendarYear>=2019