-- Monthly Revenue Analysis
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Top Products
SELECT 
    product_name,
    SUM(sales) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;

-- Category Performance
SELECT 
    category,
    SUM(sales) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;

-- Customer Behavior
SELECT 
    customer_id,
    COUNT(*) AS total_orders,
    SUM(sales) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;