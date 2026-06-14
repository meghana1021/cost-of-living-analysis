# Cost of Living Index 2022 Analysis Project

## Overview
This project analyzes the 2022 global Cost of Living Index dataset, comparing countries on cost of living, rent, groceries, restaurant prices, and local purchasing power to identify the most and least affordable countries worldwide.

## Dataset
- **File:** `Cost_of_Living_Index_2022.csv`
- **Records:** 139 countries
- **Key Columns:** Rank, Country, Cost of Living Index, Rent Index, Cost of Living Plus Rent Index, Groceries Index, Restaurant Price Index, Local Purchasing Power Index

## Objectives
- Clean and explore global cost-of-living data across 139 countries
- Identify the most and least expensive countries
- Compare cost indices against local purchasing power
- Analyze affordability and value-for-money across countries

## Tools & Technologies
- Python (Pandas, Matplotlib, Seaborn)
- Jupyter Notebook
- SQL (MySQL)

## Project Structure
```
├── Cost_of_Living_Analysis.ipynb    # EDA & visualizations
├── Cost_of_Living_Index_2022.csv    # Raw dataset
├── cost_of_living_sql_queries.sql   # 10 analytical SQL queries
└── README.md
```

## SQL Queries Included
1. Top 10 most expensive countries by Cost of Living Index
2. Top 10 cheapest countries by Cost of Living Index
3. Top 10 countries with highest Rent Index
4. Top 10 countries with highest Local Purchasing Power Index
5. Average Cost of Living, Rent and Groceries Index overall
6. Countries where Rent Index exceeds Cost of Living Index
7. Top 10 countries by Restaurant Price Index
8. Affordability score: Cost of Living vs Purchasing Power (top 10)
9. Countries with Cost of Living Plus Rent above the global average
10. Highest groceries index vs purchasing power (top 10)

## How to Run
1. Open `Cost_of_Living_Analysis.ipynb` in Jupyter Notebook
2. Run all cells to reproduce the EDA and charts
3. Import `Cost_of_Living_Index_2022.csv` into MySQL as table `cost_of_living_index_2022`
4. Run queries from `cost_of_living_sql_queries.sql`

## Author
Meghana Cheedella 
