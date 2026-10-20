/*
Project: Retail Sales Performance Analysis
File: Data Validation
Purpose: Confirm that the PostgreSQL import is complete and accurate.
Author: Sage Edgar Samuel
*/

-- Preview imported records.
SELECT *
FROM retail.orders
LIMIT 20;


-- Count imported rows.
SELECT COUNT(*) AS total_rows
FROM retail.orders;


-- Confirm that row_id is unique.
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT row_id) AS distinct_row_ids
FROM retail.orders;


-- Identify duplicate row IDs.
SELECT
    row_id,
    COUNT(*) AS occurrence_count
FROM retail.orders
GROUP BY row_id
HAVING COUNT(*) > 1;


-- Check required fields for null values.
SELECT
    COUNT(*) FILTER (WHERE row_id IS NULL) AS missing_row_ids,
    COUNT(*) FILTER (WHERE order_id IS NULL) AS missing_order_ids,
    COUNT(*) FILTER (WHERE order_date IS NULL) AS missing_order_dates,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_customer_ids,
    COUNT(*) FILTER (WHERE product_id IS NULL) AS missing_product_ids,
    COUNT(*) FILTER (WHERE sales IS NULL) AS missing_sales,
    COUNT(*) FILTER (WHERE quantity IS NULL) AS missing_quantities,
    COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit
FROM retail.orders;


-- Check numerical ranges.
SELECT
    MIN(sales) AS minimum_sales,
    MAX(sales) AS maximum_sales,
    MIN(quantity) AS minimum_quantity,
    MAX(quantity) AS maximum_quantity,
    MIN(discount) AS minimum_discount,
    MAX(discount) AS maximum_discount,
    MIN(profit) AS minimum_profit,
    MAX(profit) AS maximum_profit
FROM retail.orders;


-- Identify invalid numerical values.
SELECT *
FROM retail.orders
WHERE sales < 0
   OR quantity <= 0
   OR discount < 0
   OR discount > 1;


-- Check imported date range.
SELECT
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date,
    MIN(ship_date) AS earliest_ship_date,
    MAX(ship_date) AS latest_ship_date
FROM retail.orders;


-- Check for shipping dates before order dates.
SELECT *
FROM retail.orders
WHERE ship_date < order_date;


-- Confirm that shipping_days is correct.
SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    shipping_days,
    ship_date - order_date AS calculated_shipping_days
FROM retail.orders
WHERE shipping_days <> ship_date - order_date;


-- Inspect return-status values.
SELECT
    returned,
    COUNT(*) AS row_count
FROM retail.orders
GROUP BY returned
ORDER BY returned;


-- Identify invalid return values.
SELECT DISTINCT returned
FROM retail.orders
WHERE returned NOT IN ('Yes', 'No')
   OR returned IS NULL;


-- Produce validation totals for comparison with Excel.
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT product_id) AS total_products,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date
FROM retail.orders;
