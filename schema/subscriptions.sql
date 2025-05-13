CREATE TABLE IF NOT EXISTS subscriptions (
subscription_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
plan_name VARCHAR(50) NOT NULL,
start_date DATE NOT NULL,
end_date DATE,
renewal_timestamp TIMESTAMP,
is_active BOOLEAN DEFAULT TRUE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_subscriptions_user ON subscriptions(user_id);
CREATE INDEX idx_subscriptions_active ON subscriptions(is_active);-- 📦 EcoBox Subscription Plans

CREATE TABLE IF NOT EXISTS subscriptions (
    subscription_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    plan_name VARCHAR(50) NOT NULL, -- e.g., Basic, Premium
    start_date DATE NOT NULL,
    end_date DATE,
    renewal_timestamp TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔍 Useful index for analytics and renewal systems
CREATE INDEX idx_subscriptions_user ON subscriptions(user_id);
CREATE INDEX idx_subscriptions_active ON subscriptions(is_active);
