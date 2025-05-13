CREATE TABLE IF NOT EXISTS interaction_logs (
id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
user_id UUID NOT NULL REFERENCES users(user_id),
type VARCHAR(30) NOT NULL CHECK (type IN ('chat', 'click', 'product_view', 'quiz', 'search')),
data JSONB,
occurred_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_interaction_logs_user_type ON interaction_logs(user_id, type);-- 🧠 Interaction Logs for personalization, analytics & AI models

CREATE TABLE IF NOT EXISTS interaction_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(user_id),
    type VARCHAR(30) NOT NULL CHECK (type IN ('chat', 'click', 'product_view', 'quiz', 'search')),
    data JSONB,
    occurred_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔍 For behavior modeling
CREATE INDEX idx_interaction_logs_user_type ON interaction_logs(user_id, type);
