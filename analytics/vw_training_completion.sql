CREATE VIEW vw_training_completion AS
SELECT
    t.topic,
    COUNT(e.id) AS total_enrolled,
    SUM(CASE WHEN e.completed THEN 1 ELSE 0 END) AS total_completed,
    ROUND(100.0 * CAST(SUM(CASE WHEN e.completed THEN 1 ELSE 0 END) AS NUMBER) / COUNT(e.id), 2) AS completion_rate
FROM trainings t
JOIN training_enrollments e ON t.training_id = e.training_id
GROUP BY t.topic;