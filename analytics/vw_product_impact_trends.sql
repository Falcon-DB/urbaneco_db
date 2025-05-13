CREATE VIEW vw_product_impact_trends AS
SELECT
    p.product_id,
    p.name,
    p.eco_points,
    COUNT(oi.order_id) AS times_ordered,
    SUM(oi.quantity) AS total_units_sold,
    p.waste_type
FROM products p
LEFT JOIN order_items oi ON oi.product_id = p.product_id
GROUP BY p.product_id;
-- This view aggregates product impact trends by counting the number of times each product has been ordered,
-- summing the total units sold, and grouping by product ID, name, eco points, and waste type.