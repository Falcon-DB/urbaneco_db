🌱 UrbanEcoLiving – CASD 2024 Database Architecture (Now in Oracle SQL)
UrbanEcoLiving is a transformative initiative under the CASD 2024 campaign. It merges circular economy principles, artisan empowerment, and technological innovation to combat urban plastic and glass waste. The project turns this waste into handcrafted lifestyle products while creating dignified employment for underutilized artisan communities.

This repository now hosts the complete Oracle SQL-based data infrastructure powering the platform—from relational schemas and triggers to analytics and seed data.

👨‍💻 My Role: Database Developer
As the Database Developer, I re-architected the entire backend data layer in Oracle SQL, converting from PostgreSQL while preserving business logic and performance goals. My responsibilities enabled:

Real-time tracking of urban waste via IoT-enabled bins

Artisan training, certification, and inclusion workflows

Eco-product cataloging with sustainability metrics

Subscription-based EcoBox fulfillment operations

Insightful KPI dashboards via optimized materialized views

Automated workflows using Oracle PL/SQL triggers and procedures

🔧 Key Responsibilities
Designed normalized, scalable, and secure relational schemas in Oracle

Refactored reusable PL/SQL triggers and stored procedures

Implemented materialized views for data-driven decision-making

Seeded meaningful test data for dev and demo environments

Ensured environment clarity via configuration files and setup scripts

🗂️ Repository Structure
graphql
Copy
Edit
urbaneco_oracle_db/
├── README.md                   # Project goals and Oracle setup
├── config/                     # Environment setup scripts
│   └── init_env.sql            # Sample Oracle environment setup

├── schema/                     # 🗄️ Core Oracle schema definitions
│   ├── users.sql               # Admins, Artisans, Customers
│   ├── artisans.sql            # Skills, training status
│   ├── products.sql            # Catalog with impact metadata
│   ├── orders.sql              # Orders and itemized purchases
│   ├── waste_logs.sql          # Smart bin tracking schema
│   ├── subscriptions.sql       # Monthly EcoBox plans
│   ├── trainings.sql           # Training sessions and certs
│   └── interaction_logs.sql    # JSON interaction tracking (CLOB/JSON)

├── triggers/                   # 🔄 Business logic in PL/SQL
│   ├── trg_decrement_inventory.sql    # Auto-stock reduction on order
│   └── trg_grant_certification.sql   # Auto-certify artisans

├── analytics/                  # 📊 KPI dashboards
│   ├── analytics_views.sql          # Central view loader
│   ├── vw_waste_by_month.sql       # Waste tracking trends
│   ├── vw_artisan_leaderboard.sql  # Artisan performance
│   ├── vw_product_impact_trends.sql
│   ├── vw_active_subscriptions.sql
│   └── vw_training_completion.sql

└── seed/                       # 🧪 Demo/test data
    └── sample_data.sql         # Initial setup with sample data
🔍 Platform Capabilities (Now Powered by Oracle SQL)
♻️ Smart Circular Ecosystem
Tracks urban waste through IoT bins; logs are structured for fast analytics

🎨 Artisan Enablement
Skill mapping, training records, and certification status captured securely

🛍️ Eco Product Catalog
Products carry embedded sustainability and impact scores

📦 Subscription Box Fulfillment
Dynamic EcoBox stock and delivery tracking per user plan

📈 Analytics Layer
Optimized materialized views for operational dashboards and impact KPIs

🤖 Trigger Automation
Seamless Oracle PL/SQL-based auto-certification and stock decrement logic

🧠 User Behavior Logging
JSON data stored in CLOB/JSON fields for behavioral insights

🧭 Alignment with CASD 2024 Vision
This Oracle-powered backend aligns with Phase I & II of the UrbanEcoLiving roadmap:

Smart city waste hubs with scalable, traceable data systems

Empowered artisans through certified upskilling and fair work inclusion

Global product traceability tied to real social and environmental impact

Operational analytics driving decisions, outreach, and optimization
