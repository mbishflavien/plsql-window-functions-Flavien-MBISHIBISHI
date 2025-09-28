-- Distribution
-- Use case: Customer segmentation
SELECT 
    c.customer_id, 
    c.name, 
    SUM(t.amount) AS total_sales, 
    NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) AS quartile, 
    CUME_DIST() OVER (ORDER BY SUM(t.amount) DESC) AS cum_dist
FROM 
    customers c
JOIN 
    transactions t 
    ON c.customer_id = t.customer_id
GROUP BY 
    c.customer_id, c.name;
