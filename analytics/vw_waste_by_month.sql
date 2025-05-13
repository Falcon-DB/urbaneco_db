CREATE MATERIALIZED VIEW IF NOT EXISTS vw_waste_by_month AS
SELECT
    city,
    waste_type,
    DATE_TRUNC('month', collection_date) AS month,
    SUM(weight_kg) AS total_kg_collected
FROM waste_logs
GROUP BY city, waste_type, month;