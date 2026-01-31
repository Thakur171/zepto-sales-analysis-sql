# Zepto Sales & Inventory Analysis using SQL

## 📌 Project Overview
This project is a **SQL-based data analysis portfolio project** that analyzes a Zepto-like quick commerce inventory dataset.  
The goal is to extract **business insights related to pricing, discounts, inventory, and product categories** using SQL.

The project simulates a **real-world Data Analyst workflow**, including data validation, cleaning, exploratory analysis, and business-driven insights.

---

## 🎯 Business Objectives
The analysis aims to:
- Identify products with high discounts
- Analyze category-wise pricing and inventory distribution
- Detect low-stock and high-risk inventory items
- Compare product value using price-per-gram analysis
- Support pricing and inventory decision-making for quick commerce businesses

---

## 📂 Dataset Description
The dataset (`zepto_v1.csv`) represents a **snapshot of inventory data** from a quick commerce platform.

### Columns:
- **product_id** – Unique identifier for each product (SKU)
- **product_name** – Name of the product
- **category** – Product category (e.g., Dairy, Snacks, Beverages)
- **price** – Original product price (INR)
- **discount_percentage** – Discount offered on the product
- **weight_gms** – Product weight in grams
- **stock_quantity** – Available inventory quantity

---

## 🛠 Tools & Technologies Used
- **SQL** (MySQL / PostgreSQL compatible)
- **CSV dataset**
- SQL editor such as MySQL Workbench / pgAdmin

---

## 🔄 Analysis Workflow

### 1️⃣ Data Validation
- Checked successful data import
- Verified column structure and data types
- Identified missing, zero, or invalid values
- Explored unique categories and product counts

---

### 2️⃣ Data Cleaning
- Removed products with zero or invalid prices
- Ensured meaningful numerical values for analysis
- Prepared dataset for accurate business insights

---

### 3️⃣ Exploratory Data Analysis (EDA)
- Counted products by category
- Analyzed stock availability
- Examined price and discount distributions
- Identified duplicate or inconsistent product records

---

### 4️⃣ Business-Focused SQL Analysis
The SQL queries generate insights such as:
- 🔹 Top products offering the highest discounts
- 🔹 Category-wise price contribution
- 🔹 High-price products with low discounts
- 🔹 Low-stock products requiring inventory attention
- 🔹 Price-per-gram comparison to assess product value
- 🔹 Inventory weight distribution by category

Each query is written with a **business interpretation in mind**, not just technical output.

---

## 📊 Key Insights
- Certain categories contribute disproportionately to overall pricing value
- Some high-priced products offer minimal discounts, indicating pricing optimization opportunities
- Low-stock products with high demand require restocking priority
- Price-per-gram analysis highlights products with poor value perception

---

## 📌 Assumptions
- The dataset represents a **single inventory snapshot**, not time-series sales data
- Price is considered as MRP before discount
- Revenue-related insights assume complete sale of available stock

---

## ✅ Business Recommendations
- Increase inventory for high-discount, high-value products
- Re-evaluate pricing strategies for expensive low-discount items
- Optimize warehouse planning based on category-wise inventory weight
- Use price-per-gram insights for better product positioning

---

## 🚀 Future Enhancements
- Add sales transaction data for time-based trend analysis
- Build dashboards using Power BI or Tableau
- Integrate SQL analysis with Python for advanced analytics
- Include profit margin and supplier-level analysis

---

## 👤 Author
**Harsh Thakur**  
Aspiring Data Analyst  
GitHub: https://github.com/Thakur171
