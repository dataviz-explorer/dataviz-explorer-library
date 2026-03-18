-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 2: All Active Loans
-- Description: Demonstrates a multi-table JOIN
-- with a WHERE filter
-- ================================================

SELECT member.first_name, member.last_name, 
       book.title, loan.loan_date
FROM dataviz_library.loan
JOIN dataviz_library.member ON loan.member_id = member.id
JOIN dataviz_library.book ON loan.book_id = book.id
WHERE loan.status = 'active';
