/*
Project: Retail Sales Performance Analysis
File: Sales Performance Analysis
Purpose: Analyse sales, profit, trends and regional performance.
Author: Sage Edgar Samuel
*/

-- Overall business performance.
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS units_sold
FROM retail.orders;


-- Average order value.
WITH order_totals AS (
    SELECT
        order_id,
        SUM(sales) AS order_sales
    FROM retail.orders
    GROUP BY order_id
)
SELECT
    ROUND(AVG(order_sales), 2) AS average_order_value
FROM order_totals;


-- Annual performance.
SELECT
    EXTRACT(YEAR FROM order_date)::integer AS year,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS orders,
    COUNT(DISTINCT customer_id) AS customers
FROM retail.orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY year;

-- Monthly sales and profit.
SELECT
    DATE_TRUNC('month', order_date)::date AS month,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS units_sold
FROM retail.orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;

-- Regional performance.
SELECT
    region,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS orders
FROM retail.orders
GROUP BY region
ORDER BY sales DESC;

-- Performance by customer segment.
SELECT
    segment,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    COUNT(DISTINCT order_id) AS orders,
    COUNT(DISTINCT customer_id) AS customers
FROM retail.orders
GROUP BY segment
ORDER BY sales DESC;

-- Performance by ship mode.
SELECT
    ship_mode,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(AVG(shipping_days), 2) AS average_shipping_days,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit
FROM retail.orders
GROUP BY ship_mode
ORDER BY orders DESC;

-- Sales and profit by discount band.
SELECT
    discount_band,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales), 2) AS sales,
    ROUND(SUM(profit), 2) AS profit,
    ROUND(
        100.0 * SUM(profit) / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percentage
FROM retail.orders
GROUP BY discount_band
ORDER BY sales DESC;