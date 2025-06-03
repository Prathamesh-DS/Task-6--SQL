
#  Online Sales Analysis (MySQL + Realistic Data)

This project performs monthly sales trend analysis using a realistic dataset of 500 online orders. It is designed to help learn and practice SQL aggregation, grouping, and time-based analysis.

# Dataset

File:`realistic_orders_data.csv`

- Columns: `order_date`, `amount`, `product_id`
- Date Range: 2025– 2037
- Total Rows: 500+

---

## 🛠️ Setup Instructions

### 1. Create MySQL Database

sql
CREATE DATABASE online_sales;
USE online_sales;

### 2. Create Orders Table

sql
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);


# 3. Import CSV into MySQL

#### Option A: MySQL Workbench
- Use **Table Data Import Wizard** to import `realistic_orders_data.csv` into `orders` table.


# Monthly Sales Trend Query

sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(*) AS order_volume
FROM
    orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year, month;
    
# Learning Outcomes

- Use of `SUM()` and `COUNT()` for aggregations
- Grouping by year and month using `YEAR()` and `MONTH()`
- Understanding revenue and order trends over time

