
-- Cost of Living Index 2022 Analysis Project - 10 SQL Queries
-- Table: cost_of_living (Rank, Country, Cost_of_Living_Index,
--   Rent_Index, Cost_of_Living_Plus_Rent_Index, Groceries_Index,
--   Restaurant_Price_Index, Local_Purchasing_Power_Index)

CREATE DATABASE cost_of_living_db;

CREATE TABLE cost_of_living_index_2022 (
    `Rank` INT,
    Country VARCHAR(100),
    `Cost of Living Index` DOUBLE,
    `Rent Index` DOUBLE,
    `Cost of Living Plus Rent Index` DOUBLE,
    `Groceries Index` DOUBLE,
    `Restaurant Price Index` DOUBLE,
    `Local Purchasing Power Index` DOUBLE
);

SELECT count(*) FROM cost_of_living_index_2022;

-- 1. Top 10 most expensive countries by Cost of Living Index
SELECT Country, `Cost of Living Index`
FROM cost_of_living_index_2022
ORDER BY `Cost of Living Index` DESC
LIMIT 10;

-- 2. Top 10 cheapest countries by Cost of Living Index
SELECT Country, `Cost of Living Index`
FROM cost_of_living_index_2022
ORDER BY `Cost of Living Index` ASC
LIMIT 10;

-- 3. Top 10 countries with highest Rent Index
SELECT Country, `Rent Index`
FROM cost_of_living_index_2022
ORDER BY `Rent Index` DESC
LIMIT 10;

-- 4. Top 10 countries with highest Local Purchasing Power Index
SELECT Country, `Local Purchasing Power Index`
FROM cost_of_living_index_2022
ORDER BY `Local Purchasing Power Index` DESC
LIMIT 10;

-- 5. Average Cost of Living, Rent and Groceries Index overall
SELECT
    ROUND(AVG(`Cost of Living Index`),2) AS avg_cost_of_living,
    ROUND(AVG(`Rent Index`),2) AS avg_rent,
    ROUND(AVG(`Groceries Index`),2) AS avg_groceries
FROM cost_of_living_index_2022;

-- 6. Countries where Rent Index exceeds Cost of Living Index
SELECT Country, `Cost of Living Index`, `Rent Index`
FROM cost_of_living_index_2022
WHERE `Rent Index` > `Cost of Living Index`
ORDER BY `Rent Index` DESC;

-- 7. Top 10 countries by Restaurant Price Index
SELECT Country, `Restaurant Price Index`
FROM cost_of_living_index_2022
ORDER BY `Restaurant Price Index` DESC
LIMIT 10;

-- 8. Affordability score: Cost of Living vs Purchasing Power (top 10 best value)
SELECT Country,
       `Cost of Living Index`,
       `Local Purchasing Power Index`,
       ROUND(`Local Purchasing Power Index` - `Cost of Living Index`, 2) AS affordability_score
FROM cost_of_living_index_2022
ORDER BY affordability_score DESC
LIMIT 10;

-- 9. Countries with Cost of Living Plus Rent above the global average
SELECT Country, `Cost of Living Plus Rent Index`
FROM cost_of_living_index_2022
WHERE `Cost of Living Plus Rent Index` > (SELECT AVG(`Cost of Living Plus Rent Index`) FROM cost_of_living_index_2022)
ORDER BY `Cost of Living Plus Rent Index` DESC;

-- 10. Correlation snapshot: highest groceries index vs purchasing power (top 10)
SELECT Country, `Groceries Index`, `Local Purchasing Power Index`
FROM cost_of_living_index_2022
ORDER BY `Groceries Index` DESC
LIMIT 10;
