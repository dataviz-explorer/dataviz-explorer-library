-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 1: All Digital Content with Type
-- and Platform
-- Description: Demonstrates a multi-table JOIN
-- across digital_content, content_type
-- and platform tables
-- ================================================

SELECT dc.title, ct.name AS type, p.name AS platform
FROM dataviz_library.digital_content dc
JOIN dataviz_library.content_type ct ON dc.type_id = ct.id
JOIN dataviz_library.platform p ON dc.platform_id = p.id;
