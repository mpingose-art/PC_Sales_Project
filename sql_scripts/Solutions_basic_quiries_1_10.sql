-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
SELECT COUNT (*) AS TOTALSALES FROM [PC_SalesDB].[dbo].[Laptops_data]

-- 2. Count the number of sales per Continent.
SELECT COUNT (*) AS NUMBEROFSALES,[Continent] 
FROM [PC_SalesDB].[dbo].[Laptops_data]
Group by [Continent]

-- 3. Count the number of sales per Country or State.
SELECT COUNT (*) AS NUMBEROFSALES, [Country_or_State]
FROM [PC_SalesDB].[dbo].[Laptops_data]
GROUP BY  [Country_or_State]

-- 4. List all distinct Shop Name values.
SELECT DISTINCT [Shop_Name]
FROM [PC_SalesDB].[dbo].[Laptops_data]


-- 5. Find the average Sale Price.
SELECT AVG(Sale_Price)
FROM [PC_SalesDB].[dbo].[Laptops_data]

-- 6. Find the highest and lowest Sale Price.
SELECT Max(convert(money,[Sale_Price])) as highest, MIN(convert(money,[Sale_Price])) as minimum
FROM [PC_SalesDB].[dbo].[Laptops_data]

-- 7. Count the number of sales by Payment Method.
select count (*) AS TOTALSALES, [Payment_Method]
from [PC_SalesDB].[dbo].[Laptops_data]
group by [Payment_Method]

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT COUNT (*) AS TOTALSALES, [Channel]
FROM [PC_SalesDB].[dbo].[Laptops_data]
GROUP BY [Channel]

-- 9. Count the number of sales by Priority level.
SELECT COUNT (*) AS TOTALSALES, [Priority]
FROM [PC_SalesDB].[dbo].[Laptops_data]
GROUP BY[Priority]

-- 10. Count the number of distinct PC Make values.

SELECT COUNT (DISTINCT [PC_Make]) AS "PC MAKES" FROM [PC_SalesDB].[dbo].[Laptops_data] 