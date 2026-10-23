 # Coffee Vending Machine Sales Analysis

**Author:** Ariella Atmoko  
**Tools:** Excel, PostgreSQL, PowerPoint  
**Dataset size:** 3,636 rows
**Dummy Dataset Source:** https://www.kaggle.com/datasets/ihelon/coffee-sales

## Project Overview

This project analyzes coffee vending machine sales data to understand product performance, purchasing patterns, and customer behavior. The goal is to find insight that may help with sales boosting. 


## Business Questions

1. Which coffee products have the highest number of purchases?
2. Which products generate the most revenue?
3. Which dates have the highest transaction volume and revenue?
4. What is the busiest purchasing hour on a selected date?
5. How do customers pay: by card or cash?
6. Which identifiable customers purchase most frequently and spend the most?

## Data Preparation

The dataset was cleaned in Excel before analysis. SQL queries were used to check for missing values in selected columns and analyze the transaction data.

## Key Findings

- **Product performance:** Americano with Milk has the highest purchase count, while Latte generates the highest revenue.
- **Sales patterns:** Daily transaction volume and revenue were analyzed to identify peak dates.
- **Purchase timing:** Hourly transactions were examined for October 11, 2024.
- **Customer behavior:** Card-based purchases and cash transactions were compared, and identifiable customers were analyzed by purchase frequency and total spending.

## Business Recommendations

- Evaluate product stocking by pricing and sale performance to boost revenue.
- Investigate peak purchasing hours to determine whether staffing, machine replenishment, or product availability should be adjusted.
- Consider testing a loyalty discount after five purchases by registered cardholders, then measure repeat purchases and profitability.

## Files

- `coffee_vending_machine_analysis.sql` — SQL queries used for the analysis.
- Excel documentation and PowerPoint presentation will be added as the project develops.

## Limitations

The analysis identifies patterns in historical transaction data but does not establish the causes of customer behavior. Seasonal effects, other factors, and the impact of loyalty discounts would require further analysis.

## Conclusion

This project demonstrates the use of Excel for data preparation and PostgreSQL for querying, aggregating, and analyzing sales transactions to support data-informed business recommendations.
