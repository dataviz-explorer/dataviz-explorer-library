-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 2: All Active Digital Loans
-- Description: Demonstrates JOIN with WHERE
-- filter on status
-- ================================================

SELECT m.first_name, m.last_name, dc.title,
       dl.access_date
FROM dataviz_library.digital_loan dl
JOIN dataviz_library.member m ON dl.member_id = m.id
JOIN dataviz_library.digital_content dc
     ON dl.content_id = dc.id
WHERE dl.status = 'active';
