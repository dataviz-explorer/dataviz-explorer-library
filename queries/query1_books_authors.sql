-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Query 1: All Books with Their Authors
-- Description: Demonstrates a JOIN between 
-- book and author tables
-- ================================================

SELECT book.title, author.first_name, author.last_name
FROM dataviz_library.book
JOIN dataviz_library.author ON book.author_id = author.id;
