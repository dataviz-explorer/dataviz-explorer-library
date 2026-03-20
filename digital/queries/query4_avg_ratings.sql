-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 4: Average Rating Per Digital Content
-- Description: Demonstrates GROUP BY and AVG
-- aggregation for content ratings
-- ================================================

SELECT dc.title,
       AVG(r.rating) AS avg_rating,
       COUNT(r.id) AS total_reviews
FROM dataviz_library.review r
JOIN dataviz_library.digital_content dc
     ON r.content_id = dc.id
GROUP BY dc.title
ORDER BY avg_rating DESC;
