/*
Project: Retail Sales Performance Analysis
File: Customer Product and Returns Analysis
Purpose: Identify valuable customers, profitable products and return patterns.
Author: Sage Edgar Samuel
*/

-- Category and subcategory performance.
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    SUM(quantity) AS units_sold,
    COUNT(DISTINCT order_id) AS orders
FROM retail.orders
GROUP BY category, sub_category
ORDER BY category, sales DESC;


-- Ten products with the highest sales.
SELECT
    product_id,
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    SUM(quantity) AS units_sold
FROM retail.orders
GROUP BY
    product_id,
    product_name,
    category,
    sub_category
ORDER BY sales DESC
LIMIT 10;


-- Products generating overall losses.
SELECT
    product_id,
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    SUM(quantity) AS units_sold
FROM retail.orders
GROUP BY
    product_id,
    product_name,
    category,
    sub_category
HAVING SUM(profit) < 0
ORDER BY profit;


-- Ten customers with the highest sales.
SELECT
    customer_id,
    customer_name,
    segment,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit
FROM retail.orders
GROUP BY customer_id, customer_name, segment
ORDER BY sales DESC
LIMIT 10;


-- Ten customers with the highest profit contribution.
SELECT
    customer_id,
    customer_name,
    segment,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit
FROM retail.orders
GROUP BY customer_id, customer_name, segment
ORDER BY profit DESC
LIMIT 10;


-- Overall order return rate.
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT order_id)
        FILTER (WHERE returned = 'Yes') AS returned_orders,
    ROUND(
        100.0
        * COUNT(DISTINCT order_id) FILTER (WHERE returned = 'Yes')
        / NULLIF(COUNT(DISTINCT order_id), 0),
        2
    ) AS return_rate_percentage
FROM retail.orders;


-- Returns by category.
SELECT
    category,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT order_id)
        FILTER (WHERE returned = 'Yes') AS returned_orders,
    ROUND(
        100.0
        * COUNT(DISTINCT order_id) FILTER (WHERE returned = 'Yes')
        / NULLIF(COUNT(DISTINCT order_id), 0),
        2
    ) AS return_rate_percentage
FROM retail.orders
GROUP BY category
ORDER BY return_rate_percentage DESC;


-- Returns by region.
SELECT
    region,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT order_id)
        FILTER (WHERE returned = 'Yes') AS returned_orders,
    ROUND(
        100.0
        * COUNT(DISTINCT order_id) FILTER (WHERE returned = 'Yes')
        / NULLIF(COUNT(DISTINCT order_id), 0),
        2
    ) AS return_rate_percentage
FROM retail.orders
GROUP BY region
ORDER BY return_rate_percentage DESC;


-- Returned sales and profit by category.
SELECT
    category,
    ROUND(SUM(sales), 2) AS returned_sales,
    ROUND(SUM(profit), 2) AS returned_profit,
    SUM(quantity) AS returned_units
FROM retail.orders
WHERE returned = 'Yes'
GROUP BY category
ORDER BY returned_sales DESC;