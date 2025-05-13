# 🌱 UrbanEcoLiving – CASD 2024 Database Architecture

**UrbanEcoLiving** is a transformative initiative under the **CASD 2024** campaign. It merges circular economy principles, artisan empowerment, and technological innovation to combat urban plastic and glass waste. The project turns this waste into handcrafted lifestyle products while creating dignified employment for underutilized artisan communities.

This repository hosts the complete PostgreSQL data infrastructure powering the platform—from relational schemas and triggers to analytics and seed data.

---

## 👨‍💻 My Role: Database Developer

As the **Database Developer**, I was responsible for architecting and implementing the entire backend data layer. My contributions enabled:

- Real-time tracking of urban waste via IoT-enabled bins
- Artisan training, certification, and inclusion
- Product cataloging with environmental impact scores
- Subscription-based eco-box fulfillment
- Insightful KPI dashboards through optimized analytics views
- Automated business logic using SQL triggers

### Responsibilities:

- Designed normalized, scalable, and secure relational schemas
- Wrote reusable and atomic SQL triggers to enforce automation
- Created materialized views for data-driven decision making
- Seeded meaningful test data to support development and demo phases
- Ensured environmental portability and clarity using `.env` files

---

## 🗂️ Repository Structure

```bash
urbaneco_db/
├── README.md                  # Project setup and goals
├── .env.example               # Sample environment configuration

├── schema/                    # 🗄️ Core relational schema
│   ├── users.sql              # Users: Admins, Artisans, Customers
│   ├── artisans.sql           # Artisan skill mapping and status
│   ├── products.sql           # Eco-product catalog with impact data
│   ├── orders.sql             # Orders and order_items schema
│   ├── waste_logs.sql         # Smart bin waste tracking
│   ├── subscriptions.sql      # Monthly EcoBox plans
│   ├── trainings.sql          # Artisan training & certifications
│   └── interaction_logs.sql   # Clicks, views, chat logs (JSONB)

├── triggers/                  # 🔄 Business logic automation
│   ├── decrement_inventory.sql    # Auto-reduce stock on order
│   └── grant_certification.sql   # Auto-certify training completion

├── analytics/                 # 📊 Views for KPI dashboards
│   ├── analytics_views.sql        # Loader for all analytics
│   ├── vw_waste_by_month.sql     # Monthly waste stats
│   ├── vw_artisan_leaderboard.sql# Artisan revenue metrics
│   ├── vw_product_impact_trends.sql
│   ├── vw_active_subscriptions.sql
│   └── vw_training_completion.sql

└── seed/                      # 🧪 Sample data
    └── sample_data.sql        # Initial users, orders, products
🔍 Database Capabilities
♻️ Smart Circular Ecosystem: Track and log waste collection through smart IoT bins

🎨 Artisan Enablement: Store training credentials, skills, and certification status

🛍️ Eco Product Catalog: Maintain products with sustainability metadata

📦 Subscription Box: Fulfill recurring EcoBox plans with real-time stock tracking

📈 Analytics Layer: Dashboard-ready materialized views for key KPIs

🤖 Trigger Automation: Auto-certification and inventory decrement logic

🧠 Behavioral Logging: Capture user interactions in JSONB format for insights

🧭 Alignment with CASD 2024 Vision
This data system underpins Phase I & II of UrbanEcoLiving's roadmap, enabling:

Scalable city-based smart collection and processing hubs

Certification-backed artisan empowerment and digital inclusion

Rich, traceable product stories for a global eco-conscious market

Operational analytics to drive social and environmental impact

📬 Contact
For collaboration, backend integration discussions, or technical contributions, feel free to open an issue or connect with me on LinkedIn.

Together, let’s build data systems that power a cleaner, greener future. 🌍
