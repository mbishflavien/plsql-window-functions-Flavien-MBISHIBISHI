-- Aggregate function
-- Use case: Running totals and trends
SELECT 
    t.transaction_id, 
    t.sale_date, 
    t.amount, 
    SUM(t.amount) OVER (
        ORDER BY t.sale_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total, 
    AVG(t.amount) OVER (
        ORDER BY t.sale_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_avg, 
    MIN(t.amount) OVER (
        ORDER BY t.sale_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS min_so_far, 
    MAX(t.amount) OVER (
        ORDER BY t.sale_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS max_so_far
FROM 
    transactions t;
