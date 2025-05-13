CREATE TABLE IF NOT EXISTS artisans (
    artisan_id UUID PRIMARY KEY REFERENCES users(user_id) ON DELETE CASCADE,
    skills CLOB,
    city VARCHAR(100),
    certification_level VARCHAR(50),
    income_generated NUMERIC(10,2) DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE
);