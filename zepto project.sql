create database zepto_sales_analysis_sql



-- Data Validation: Total number of records
SELECT COUNT(*) AS total_records
FROM zepto;

-- Data Preview: First 5 rows
SELECT *
FROM zepto
LIMIT 5;

-- Data Quality Check: Identify records with missing critical values
SELECT *
FROM zepto
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR availableQuantity IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;
   
   -- Category Analysis: Distinct product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- Inventory Availability Analysis
SELECT outOfStock, COUNT(*) AS product_count
FROM zepto
GROUP BY outOfStock;

-- SKU Duplication Analysis
SELECT name, COUNT(*) AS sku_count
FROM zepto
GROUP BY name
HAVING COUNT(*) > 1
ORDER BY sku_count DESC;

-- Invalid Pricing Check
SELECT *
FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

-- Data Cleaning: Remove zero-priced products
DELETE FROM zepto
WHERE mrp = 0;

-- Best Value Products by Discount
SELECT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Premium Product Stock-Out Analysis
SELECT name, mrp
FROM zepto
WHERE outOfStock = TRUE
  AND mrp > 300
ORDER BY mrp DESC;

-- Category-wise Estimated Revenue
SELECT category,
SUM(
  CASE
    WHEN outOfStock = FALSE
    THEN discountedSellingPrice * availableQuantity
    ELSE 0
  END
) AS estimated_revenue
FROM zepto
GROUP BY category
ORDER BY estimated_revenue DESC;

-- High MRP with Low Discount Products
SELECT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500
  AND discountPercent < 10
ORDER BY mrp DESC;

-- Average Discount by Category
SELECT category,
ROUND(AVG(discountPercent), 2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Discount Strategy Analysis
SELECT
CASE
  WHEN discountPercent < 10 THEN 'Low Discount'
  WHEN discountPercent BETWEEN 10 AND 30 THEN 'Medium Discount'
  ELSE 'High Discount'
END AS discount_bucket,
COUNT(*) AS product_count
FROM zepto
GROUP BY discount_bucket
ORDER BY product_count DESC;

-- Inventory Risk Analysis
SELECT name, availableQuantity
FROM zepto
WHERE availableQuantity < 5
  AND outOfStock = FALSE
ORDER BY availableQuantity ASC;

-- Price per Gram Analysis
SELECT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice / weightInGms, 3) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
  AND outOfStock = FALSE
ORDER BY price_per_gram ASC
LIMIT 10;

-- Product Weight Segmentation
SELECT name, weightInGms,
CASE
  WHEN weightInGms < 1000 THEN 'Low'
  WHEN weightInGms < 5000 THEN 'Medium'
  ELSE 'Bulk'
END AS weight_category
FROM zepto;

-- Inventory Weight Distribution by Category
SELECT category,
SUM(weightInGms * availableQuantity) AS total_inventory_weight
FROM zepto
GROUP BY category
ORDER BY total_inventory_weight DESC;


