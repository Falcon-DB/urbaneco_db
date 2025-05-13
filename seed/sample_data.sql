INSERT INTO users (user_id, full_name, email, password_hash, role)
VALUES
(uuid_generate_v4(), 'Rina Das', 'rina@example.com', 'HASHED_PASSWORD', 'artisan');-- 🧪 Sample Artisans
INSERT INTO users (user_id, full_name, email, password_hash, role)
VALUES
    (uuid_generate_v4(), 'Rina Das', 'rina@example.com', 'HASHED_PASSWORD', 'artisan');

-- Add more users, products, orders...
