CREATE VIEW vw_active_subscriptions AS
SELECT
    s.subscription_id,
    s.user_id,
    u.full_name,
    s.plan_name,
    s.start_date,
    s.end_date,
    s.is_active
FROM subscriptions s
JOIN users u ON u.user_id = s.user_id
WHERE s.is_active = TRUE;