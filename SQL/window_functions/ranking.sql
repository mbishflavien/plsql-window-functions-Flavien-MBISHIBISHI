-- Ranking customers
-- Use case: Top customers by revenue
SELECT 
    c.customer_id, 
    c.name, 
    SUM(t.amount) AS total_sales, 
    RANK()        OVER (ORDER BY SUM(t.amount) DESC) AS rnk, 
    ROW_NUMBER()  OVER (ORDER BY SUM(t.amount) DESC) AS row_num, 
    DENSE_RANK()  OVER (ORDER BY SUM(t.amount) DESC) AS dense_rnk, 
    PERCENT_RANK() OVER (ORDER BY SUM(t.amount) DESC) AS pct_rnk
FROM 
    customers c
JOIN 
    transactions t 
    ON c.customer_id = t.customer_id
GROUP BY 
    c.customer_id, c.name;
