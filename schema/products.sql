CREATE TABLE IF NOT EXISTS products (
product_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
name VARCHAR(150) NOT NULL,
description TEXT,
category VARCHAR(50) NOT NULL,
waste_type VARCHAR(50) NOT NULL,
artisan_id UUID NOT NULL REFERENCES artisans(artisan_id) ON DELETE SET NULL,
price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
eco_points INT DEFAULT 0 CHECK (eco_points >= 0),
inventory_count INT DEFAULT 0 CHECK (inventory_count >= 0),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_products_category ON products(category);
CREATE INDEX idx_products_waste_type ON products(waste_type);-- 💚 Product Catalog Table (eco-products made from waste)

CREATE TABLE IF NOT EXISTS products (
    product_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(150) NOT NULL,
    description TEXT,
    category VARCHAR(50) NOT NULL, -- e.g., 'decor', 'utility'
    waste_type VARCHAR(50) NOT NULL, -- e.g., 'plastic', 'glass'
    artisan_id UUID NOT NULL REFERENCES artisans(artisan_id) ON DELETE SET NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    eco_points INT DEFAULT 0 CHECK (eco_points >= 0),
    inventory_count INT DEFAULT 0 CHECK (inventory_count >= 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔍 Indexes
CREATE INDEX idx_products_category ON products(category);
CREATE INDEX idx_products_waste_type ON products(waste_type);
