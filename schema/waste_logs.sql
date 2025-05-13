CREATE TABLE IF NOT EXISTS waste_logs (
log_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
waste_type VARCHAR(50) NOT NULL,
weight_kg NUMERIC(6, 2) NOT NULL CHECK (weight_kg > 0),
city VARCHAR(100) NOT NULL,
collection_date DATE NOT NULL,
collected_by UUID REFERENCES users(user_id),
notes TEXT
);

CREATE INDEX idx_waste_logs_city ON waste_logs(city);
CREATE INDEX idx_waste_logs_date ON waste_logs(collection_date);-- ♻️ Waste Collection Logs from Smart Bins / Manual Collection

CREATE TABLE IF NOT EXISTS waste_logs (
    log_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    waste_type VARCHAR(50) NOT NULL, -- e.g., 'plastic', 'glass'
    weight_kg NUMERIC(6, 2) NOT NULL CHECK (weight_kg > 0),
    city VARCHAR(100) NOT NULL,
    collection_date DATE NOT NULL,
    collected_by UUID REFERENCES users(user_id),
    notes TEXT
);

-- 🔍 Indexes for analytics
CREATE INDEX idx_waste_logs_city ON waste_logs(city);
CREATE INDEX idx_waste_logs_date ON waste_logs(collection_date);
