CREATE VIEW vw_artisan_leaderboard AS
SELECT
    a.artisan_id,
    u.full_name,
    COUNT(DISTINCT p.product_id) AS products_made,
    SUM(oi.quantity * oi.price) AS total_sales
FROM artisans a
JOIN users u ON a.artisan_id = u.user_id
JOIN products p ON p.artisan_id = a.artisan_id
JOIN order_items oi ON oi.product_id = p.product_id
GROUP BY a.artisan_id, u.full_name
ORDER BY total_sales DESC;