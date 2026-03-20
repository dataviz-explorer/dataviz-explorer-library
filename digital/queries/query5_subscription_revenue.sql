-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 5: Total Subscription Revenue Per Plan
-- Description: Demonstrates GROUP BY, COUNT
-- and SUM for business revenue reporting
-- ================================================

SELECT sp.name AS plan, sp.price,
       COUNT(s.id) AS total_subscribers,
       SUM(sp.price) AS total_revenue
FROM dataviz_library.subscription s
JOIN dataviz_library.subscription_plan sp
     ON s.plan_id = sp.id
GROUP BY sp.name, sp.price
ORDER BY total_revenue DESC;
