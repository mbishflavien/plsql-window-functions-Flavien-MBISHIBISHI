-- Navigation
-- Use case: Period-to-period analysis
SELECT 
    TO_CHAR(t.sale_date,'YYYY-MM') AS month, 
    SUM(t.amount) AS total_sales, 
    LAG(SUM(t.amount)) OVER (
        ORDER BY TO_CHAR(t.sale_date,'YYYY-MM')
    ) AS prev_month, 
    LEAD(SUM(t.amount)) OVER (
        ORDER BY TO_CHAR(t.sale_date,'YYYY-MM')
    ) AS next_month, 
    ROUND(
        (SUM(t.amount) - LAG(SUM(t.amount)) OVER (ORDER BY TO_CHAR(t.sale_date,'YYYY-MM')))
        / NULLIF(LAG(SUM(t.amount)) OVER (ORDER BY TO_CHAR(t.sale_date,'YYYY-MM')), 0) * 100,
        2
    ) AS growth_pct
FROM 
    transactions t
GROUP BY 
    TO_CHAR(t.sale_date,'YYYY-MM')
ORDER BY 
    month;
