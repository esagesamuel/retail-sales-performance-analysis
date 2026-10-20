# Retail Sales Performance Analysis

## Project overview

This end-to-end data analytics project examines retail sales, profitability, customers, discounts, returns and regional performance. The workflow combines Excel and Power Query for data preparation, PostgreSQL and SQL for analysis, and Power BI for data modelling and interactive reporting.

The project is designed to demonstrate practical Data Analyst and Junior Business Intelligence Analyst skills: cleaning transactional data, defining reliable KPIs, building a star-schema model, writing analytical queries, creating DAX measures and translating results into business recommendations.

## Business objectives

The analysis addresses the following questions:

- How much revenue and profit did the business generate?
- How did sales and profit change over time?
- Which regions, categories and subcategories performed best?
- Which areas generated high sales but weak or negative profit?
- How did discount levels affect profitability?
- Who were the highest-value customers?
- What proportion of orders were returned?
- Which categories recorded the highest return rates?

## Tools used

- **Microsoft Excel and Power Query:** initial inspection, cleaning, transformation and preparation
- **PostgreSQL:** relational storage and analytical querying
- **SQL:** validation, aggregation, segmentation and business analysis
- **Power BI:** star-schema modelling, DAX measures and dashboard development
- **Git and GitHub:** version control and portfolio presentation

## Dataset

The project uses the Sample Superstore retail dataset. It contains order-line transactions covering customers, products, geographical locations, shipping, discounts, sales, profit and returns.

Key dataset characteristics:

| Measure | Value |
|---|---:|
| Coverage | January 2023–December 2026 |
| Order lines | 10,194 |
| Distinct orders | 5,111 |
| Distinct customers | 804 |
| Units sold | 38,654 |

The raw workbook is available at [`data/raw/sample-superstore.xls`](data/raw/sample-superstore.xls).

## Data preparation

The preparation workflow included:

1. Inspecting field names, data types and missing values.
2. Cleaning text fields and standardising category values.
3. Converting order and shipping fields to proper date types.
4. Calculating shipping duration.
5. Categorising discounts into No, Low, Medium and High Discount bands.
6. Joining order records with returns data.
7. Treating unmatched return records as orders that were not returned.
8. Loading the cleaned order-level data into PostgreSQL.
9. Validating row counts, distinct orders, customers and date coverage.

## Power BI data model

The Power BI report uses a star-schema design with `FactSales` at the centre.

```text
                  DimDate
                     |
DimCustomer ——— FactSales ——— DimProduct
                     |
               DimGeography
```

The dimension tables filter the fact table using one-to-many, single-direction relationships:

- `DimDate[Date]` → `FactSales[order_date]`
- `DimCustomer[customer_id]` → `FactSales[customer_id]`
- `DimProduct[product_id]` → `FactSales[product_id]`
- `DimGeography[location_key]` → `FactSales[location_key]`

Important DAX measures include Total Sales, Total Profit, Profit Margin, Total Orders, Average Order Value, Return Rate, Average Shipping Days and year-over-year growth.

## Dashboard pages

### 1. Executive Overview

Presents headline KPIs, monthly sales and profit trends, regional performance and category-level results.

![Executive Overview dashboard](executive-overview.png)

### 2. Product and Profitability Analysis

Examines category and subcategory profitability, discount performance, loss-making areas and the relationship between sales and profit.

![Product and Profitability dashboard](product-profitability.png)

### 3. Customers, Returns and Shipping

Highlights leading customers, customer segments, repeat-customer behaviour, category return rates and shipping-mode performance.

![Customers, Returns and Shipping dashboard](customer-returns.png)

## Headline results

| KPI | Result |
|---|---:|
| Total sales | 2,326,534.52 |
| Total profit | 292,297.57 |
| Profit margin | 12.56% |
| Distinct orders | 5,111 |
| Distinct customers | 804 |
| Units sold | 38,654 |
| Average order value | 455.20 |
| Returned orders | 296 |
| Return rate | 5.79% |

## Key findings

### Sales and profitability

- Annual sales increased from **494,040.27 in 2023** to **745,567.44 in 2026**.
- Annual profit increased from **51,684.38** to **95,926.85** over the same period.
- November 2026 produced the highest monthly sales at **118,454.49**.
- December 2025 produced the highest monthly profit at **17,926.27**.

### Regional performance

- The **West** was the strongest region, generating **739,813.71** in sales and **110,799.15** in profit.
- The **Central** region recorded the weakest regional profit margin at **7.92%**, below the overall margin of 12.56%.

### Product performance

- **Technology** led category performance with **839,893.35** in sales and **146,544.09** in profit.
- **Furniture** generated **754,747.94** in sales but only **19,729.94** in profit, resulting in a margin of just **2.61%**.
- **Tables** were the largest loss-making subcategory, losing **17,753.32**.
- Bookcases lost **3,632.07**, while Supplies lost **1,171.28**.
- Copiers were the most profitable subcategory, producing **56,094.01** in profit.

### Discount performance

- Transactions without discounts produced **326,718.83** in profit at a **29.56% margin**.
- High-discount transactions generated **260,286.25** in sales but lost **125,507.56**.
- The High Discount band recorded a **-48.22% profit margin**, showing a strong relationship between excessive discounting and losses.

### Customers and returns

- Sean Miller was the highest-sales customer in the exported customer analysis, with **25,043.07** in sales, but the account generated a **1,980.75 loss**.
- The overall return rate was **5.79%**.
- Technology had the highest category return rate at **7.88%**, followed by Furniture at **7.48%** and Office Supplies at **6.14%**.

## Business recommendations

1. **Strengthen discount controls.** Require a profitability review before approving high discounts, particularly on products that already have weak margins.
2. **Address loss-making Furniture lines.** Review the pricing, discounting, supplier costs and fulfilment costs of Tables and Bookcases.
3. **Investigate the Central region.** Analyse its product mix, discounts and operating costs to understand why its margin trails the other regions.
4. **Protect profitable Technology lines.** Maintain availability and service quality for Copiers and Accessories while reviewing the low margin generated by Machines.
5. **Reduce avoidable returns.** Investigate the reasons for Technology and Furniture returns and monitor return rates by product and customer.
6. **Assess customer quality using profit as well as sales.** Review high-revenue but unprofitable customer accounts before offering additional discounts.

## Analysis outputs

The repository includes reusable CSV exports produced from the PostgreSQL analysis:

- [`overall-performance.csv`](analysis-results/overall-performance.csv)
- [`monthly-performance.csv`](analysis-results/monthly-performance.csv)
- [`regional-performance.csv`](analysis-results/regional-performance.csv)
- [`category-performance.csv`](analysis-results/category-performance.csv)
- [`discount-analysis.csv`](analysis-results/discount-analysis.csv)
- [`customer-performance.csv`](analysis-results/customer-performance.csv)
- [`returns-analysis.csv`](analysis-results/returns-analysis.csv)
- [`returns-analysis-by-category.csv`](analysis-results/returns-analysis-by-category.csv)

## Repository structure

```text
retail-sales-performance-analysis/
├── README.md
├── executive-overview.png
├── product-profitability.png
├── customer-returns.png
├── analysis-results/
│   ├── category-performance.csv
│   ├── customer-performance.csv
│   ├── discount-analysis.csv
│   ├── monthly-performance.csv
│   ├── overall-performance.csv
│   ├── regional-performance.csv
│   ├── returns-analysis-by-category.csv
│   └── returns-analysis.csv
└── data/
    └── raw/
        └── sample-superstore.xls
```

The dashboard screenshots are included at the repository root for immediate viewing on GitHub. Power BI, SQL and supporting documentation folders can be added after those files have been saved locally.

## How to use this project

1. Download or clone the repository.
2. Review the raw workbook in `data/raw`.
3. Review the exported SQL results in `analysis-results`.
4. Open the Power BI report after the `.pbix` file is added to the repository.
5. Use the Year, Region, Category and Segment slicers to explore performance.

## Author

**Sage Edgar Samuel**  
Data Analyst | Business Intelligence Analyst
