-- Removed PostgreSQL-specific CREATE EXTENSION statement as it is not supported in Oracle SQL.

CREATE TABLE IF NOT EXISTS users (
user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
full_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password_hash TEXT NOT NULL,
role VARCHAR(20) NOT NULL CHECK (role IN ('admin', 'artisan', 'customer')),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_role ON users(role);-- 👤 USERS: Core identity table for Admins, Customers, Artisans

-- Removed unsupported CREATE EXTENSION statement and replaced UUID with Oracle-compatible data type.

CREATE TABLE users (
    user_id RAW(16) PRIMARY KEY DEFAULT SYS_GUID(),
    full_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    password_hash CLOB NOT NULL,
    role VARCHAR2(20) NOT NULL CHECK (role IN ('admin', 'artisan', 'customer')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔍 Index for fast role-based filtering
CREATE INDEX idx_users_role ON users(role);
