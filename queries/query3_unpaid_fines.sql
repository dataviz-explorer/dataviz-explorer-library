-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 3: All Unpaid Fines
-- Description: Demonstrates filtering on a 
-- BOOLEAN column across joined tables
-- ================================================

SELECT member.first_name, member.last_name, 
       fine.amount
FROM dataviz_library.fine
JOIN dataviz_library.loan ON fine.loan_id = loan.id
JOIN dataviz_library.member ON loan.member_id = member.id
WHERE fine.paid = FALSE;
