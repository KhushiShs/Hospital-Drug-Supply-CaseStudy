CREATE DATABASE pharma;
USE pharma;

SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM drug_catalog;
SELECT MIN(order_date), MAX(order_date) FROM orders;

SELECT drug_id, SUM(quantity) AS total_qty
FROM orders
GROUP BY drug_id
ORDER BY total_qty DESC
LIMIT 5;

# 1.Check current inventory vs lead time
SELECT 
    i.hospital_id,
    i.drug_id,
    d.drug_name,
    i.current_stock,
    d.lead_time_days,
    ROUND(AVG(o.quantity), 2) AS avg_weekly_demand,
    CASE 
        WHEN i.current_stock < (AVG(o.quantity) * (d.lead_time_days / 7.0))
        THEN 'AT RISK'
        ELSE 'OK'
    END AS stock_status
FROM inventory_snapshot i
JOIN drug_catalog d ON i.drug_id = d.drug_id
JOIN orders o ON i.drug_id = o.drug_id AND i.hospital_id = o.hospital_id
GROUP BY i.hospital_id, i.drug_id, d.drug_name, i.current_stock, d.lead_time_days;

# 2.Region-level drug demand trends
SELECT 
    region_id,
    drug_id,
    SUM(quantity) AS total_orders
FROM orders
GROUP BY region_id, drug_id
ORDER BY region_id, total_orders DESC;

# 3.Disease cases vs drug demand
SELECT 
    c.week_start,
    c.region_id,
    c.disease,
    c.cases,
    SUM(o.quantity) AS related_drug_orders
FROM disease_cases c
JOIN orders o 
    ON c.region_id = o.region_id 
   AND o.order_date BETWEEN c.week_start AND DATE_ADD(c.week_start, INTERVAL 7 DAY)
GROUP BY c.week_start, c.region_id, c.disease, c.cases
ORDER BY c.week_start, c.region_id;


