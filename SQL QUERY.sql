use orders_db;

SELECT order_date, amount, product_id
FROM realistic_orders_data
ORDER BY order_date
LIMIT 5;

SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_year,
    COUNT(*) AS total_orders
FROM realistic_orders_data
GROUP BY order_year
ORDER BY order_year;

SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_month,
    COUNT(DISTINCT product_id) AS order_volume,
   FLOOR(SUM(amount)) AS total_revenue
FROM realistic_orders_data
WHERE STR_TO_DATE(order_date, '%d-%m-%Y') BETWEEN '2025-01-01' AND '2037-05-01'
GROUP BY order_year, order_month
ORDER BY order_year, order_month
LIMIT 1000;


