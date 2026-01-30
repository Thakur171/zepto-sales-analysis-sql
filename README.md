Zepto Sales & Inventory Analysis using SQL
📌 Project Overview

This project focuses on analyzing product-level sales and inventory data from a quick-commerce platform (Zepto-style dataset) using SQL.
The objective is to perform data validation, exploration, cleaning, and business-oriented analysis to derive insights related to pricing, discounts, inventory availability, and category performance.

This project simulates a real-world Data Analyst workflow where raw retail data is transformed into actionable business insights.

🎯 Objectives

Validate and understand the structure of raw inventory data

Analyze product categories and stock availability

Study pricing and discount strategies

Estimate category-wise revenue based on available inventory

Identify inventory risks such as low stock and stock-outs

Determine best value-for-money products using price efficiency metrics

🗂 Dataset Description

Each row represents a unique product SKU

Key attributes include:

Product category and name

Price and discount percentage

Available inventory quantity

Product weight

Stock availability status

Note:
The dataset does not specify currency units. Price values are treated as relative price units and used for comparative analysis rather than absolute monetary calculations.

🛠 Tools & Technologies

MySQL

SQL

MySQL Workbench

GitHub

🔎 Analysis Workflow
1️⃣ Data Validation & Quality Check

Verified successful data import using record count checks

Previewed sample records to ensure correct column mapping

Checked for missing values in key pricing and inventory columns

2️⃣ Data Exploration

Identified distinct product categories

Analyzed in-stock vs out-of-stock product distribution

Detected products appearing under multiple SKUs

3️⃣ Data Cleaning

Identified and removed products with invalid (zero) pricing

Ensured clean and reliable data before analysis

4️⃣ Core Analysis

Top products based on discount percentage

High-priced products with low discounts

Category-wise estimated revenue (excluding out-of-stock products)

Categories offering the highest average discounts

5️⃣ Advanced & Original Insights

Discount strategy analysis using discount buckets

Inventory risk identification (low-stock products)

Price-per-gram analysis to identify best value products

Product segmentation based on weight categories

Inventory weight distribution across product categories

📊 Key Business Insights

Medium discount range (10–30%) contains the majority of products

Several high-priced products are out of stock, indicating potential revenue loss

Inventory risk analysis highlights products requiring restocking priority

Price-per-gram analysis shows significant variation in value across products

A small number of categories contribute a large share of total estimated revenue

📁 Project Structure
zepto-sales-analysis-sql/
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_data_exploration.sql
│   ├── 03_data_cleaning.sql
│   ├── 04_core_analysis.sql
│   └── 05_advanced_insights.sql
│
├── README.md

🧠 Key Learnings

Importance of data validation before analysis

Handling real-world inventory datasets using SQL

Writing structured, business-focused SQL queries

Translating raw query outputs into meaningful insights

🚀 Future Enhancements

Build interactive dashboards using Power BI / Tableau

Add time-based sales data for trend analysis

Perform profitability analysis using cost-related data

👤 Author

Harsh Thakur
SQL | Data Analysis | MySQL

✅ How This Project Strengthens My Profile

This project demonstrates:

Strong SQL fundamentals

Structured analytical thinking

Practical data cleaning and exploration skills

Ability to generate business insights from raw data

Readiness for Data Analyst / Business Analyst roles
