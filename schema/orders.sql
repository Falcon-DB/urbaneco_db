CREATE TABLE IF NOT EXISTS orders (
order_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
status VARCHAR(30) NOT NULL DEFAULT 'placed'
CHECK (status IN ('placed', 'shipped', 'delivered', 'cancelled')),
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount NUMERIC(10, 2) NOT NULL CHECK (total_amount >= 0)
);

CREATE TABLE IF NOT EXISTS order_items (
order_item_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
order_id UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
product_id UUID NOT NULL REFERENCES products(product_id),
quantity INT NOT NULL CHECK (quantity > 0),
price NUMERIC(10,2) NOT NULL CHECK (price >= 0)
);

CREATE INDEX idx_orders_user_id ON orders(user_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);-- 🛒 Orders and Order Items Table for customer purchases

CREATE TABLE IF NOT EXISTS orders (
    order_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    status VARCHAR(30) NOT NULL DEFAULT 'placed'
        CHECK (status IN ('placed', 'shipped', 'delivered', 'cancelled')),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMERIC(10, 2) NOT NULL CHECK (total_amount >= 0)
);

CREATE TABLE IF NOT EXISTS order_items (
    order_item_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    order_id UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
    product_id UUID NOT NULL REFERENCES products(product_id),
    quantity INT NOT NULL CHECK (quantity > 0),
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0)
);

-- 🔍 Indexes
CREATE INDEX idx_orders_user_id ON orders(user_id);
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
