-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 3: All Active Subscriptions
-- Description: Demonstrates JOIN between
-- subscription, member and subscription_plan
-- ================================================

SELECT m.first_name, m.last_name,
       sp.name AS plan, sp.price, s.end_date
FROM dataviz_library.subscription s
JOIN dataviz_library.member m ON s.member_id = m.id
JOIN dataviz_library.subscription_plan sp
     ON s.plan_id = sp.id
WHERE s.status = 'active';
