-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 4: Total Fines Per Member
-- Description: Demonstrates GROUP BY and 
-- SUM aggregation
-- ================================================

SELECT member.first_name, member.last_name, 
       SUM(fine.amount) AS total_fines
FROM dataviz_library.fine
JOIN dataviz_library.loan ON fine.loan_id = loan.id
JOIN dataviz_library.member ON loan.member_id = member.id
GROUP BY member.first_name, member.last_name;
