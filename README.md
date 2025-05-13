# 🌱 UrbanEcoLiving – CASD 2024 Database Architecture (Oracle SQL)

**UrbanEcoLiving** is a transformative initiative under the CASD 2024 campaign. It merges circular economy principles, artisan empowerment, and technological innovation to combat urban plastic and glass waste. The project turns this waste into handcrafted lifestyle products while creating dignified employment for underutilized artisan communities.

> ✅ This repository now hosts the **complete Oracle SQL-based data infrastructure** powering the platform—from relational schemas and triggers to analytics and seed data.

---

## 👨‍💻 My Role: Database Developer

As the **Database Developer**, I re-architected the entire backend data layer in **Oracle SQL**, converting from PostgreSQL while preserving business logic and performance goals.

### Key Contributions

- Real-time tracking of urban waste via IoT-enabled bins  
- Artisan training, certification, and inclusion workflows  
- Eco-product cataloging with sustainability metrics  
- Subscription-based EcoBox fulfillment operations  
- Insightful KPI dashboards via optimized materialized views  
- Automated workflows using Oracle PL/SQL triggers and procedures  

---

## 🔧 Responsibilities

- Designed normalized, scalable, and secure relational schemas in Oracle
- Refactored reusable PL/SQL triggers and stored procedures
- Implemented materialized views for decision-ready KPIs
- Seeded test data to support development and demos
- Maintained clean and modular configuration using `.sql` setup scripts

---

## 🗂️ Repository Structure

urbaneco_oracle_db/
├── README.md # Project goals and Oracle setup
├── config/ # Environment setup scripts
│ └── init_env.sql # Sample Oracle environment setup

├── schema/ # 🗄️ Core Oracle schema definitions
│ ├── users.sql # Admins, Artisans, Customers
│ ├── artisans.sql # Skills, training status
│ ├── products.sql # Catalog with impact metadata
│ ├── orders.sql # Orders and itemized purchases
│ ├── waste_logs.sql # Smart bin tracking schema
│ ├── subscriptions.sql # Monthly EcoBox plans
│ ├── trainings.sql # Training sessions and certs
│ └── interaction_logs.sql # JSON interaction tracking (CLOB/JSON)

├── triggers/ # 🔄 Business logic in PL/SQL
│ ├── trg_decrement_inventory.sql # Auto-stock reduction on order
│ └── trg_grant_certification.sql # Auto-certify artisans

├── analytics/ # 📊 KPI dashboards
│ ├── analytics_views.sql # Central view loader
│ ├── vw_waste_by_month.sql # Waste tracking trends
│ ├── vw_artisan_leaderboard.sql # Artisan performance
│ ├── vw_product_impact_trends.sql
│ ├── vw_active_subscriptions.sql
│ └── vw_training_completion.sql

└── seed/ # 🧪 Demo/test data
└── sample_data.sql # Initial setup with sample data

yaml
Copy
Edit

---

## 🔍 Platform Capabilities (Powered by Oracle SQL)

- ♻️ **Smart Circular Ecosystem**  
  Track and log urban waste collection through smart IoT bins

- 🎨 **Artisan Enablement**  
  Store training credentials, skills, and certification statuses

- 🛍️ **Eco Product Catalog**  
  Maintain product metadata with embedded environmental impact scores

- 📦 **Subscription Fulfillment**  
  Handle dynamic EcoBox orders with real-time stock adjustments

- 📈 **Analytics Layer**  
  Materialized views for dashboards with KPIs across operations

- 🤖 **Trigger Automation**  
  Auto-certify artisans and decrement stock via PL/SQL logic

- 🧠 **Behavioral Logging**  
  Capture user interactions in Oracle JSON/CLOB fields for insights

---

## 🧭 Alignment with CASD 2024 Vision

This backend supports **Phase I & II** of UrbanEcoLiving's roadmap:

- ✅ **Smart city collection hubs** with scalable waste tracking  
- ✅ **Certified artisan inclusion** and digital empowerment  
- ✅ **Globally traceable products** backed by environmental data  
- ✅ **Operational analytics** for sustainability and impact reporting  

---

## 📬 Contact

For collaboration, backend integration, or technical contributions:

- 📧 Open an issue in this repo  
- 💼 Connect with me on #https://www.linkedin.com/in/gourab-karmakar-629895323

> Let’s build data systems that empower artisans and protect our planet. 🌍
