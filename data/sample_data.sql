-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Description: Sample data inserts for all tables
-- ================================================

-- Authors
INSERT INTO dataviz_library.author (first_name, last_name, nationality)
VALUES ('Gabriel', 'Garcia Marquez', 'Colombian');
INSERT INTO dataviz_library.author (first_name, last_name, nationality)
VALUES ('Toni', 'Morrison', 'American');
INSERT INTO dataviz_library.author (first_name, last_name, nationality)
VALUES ('Chimamanda', 'Adichie', 'Nigerian');

-- Branches
INSERT INTO dataviz_library.branch (name, location)
VALUES ('Central Branch', 'Bridgetown, St. Michael');
INSERT INTO dataviz_library.branch (name, location)
VALUES ('North Branch', 'Speightstown, St. Peter');

-- Books
INSERT INTO dataviz_library.book (title, genre, published_year, author_id)
VALUES ('One Hundred Years of Solitude', 'Fiction', 1967, 1);
INSERT INTO dataviz_library.book (title, genre, published_year, author_id)
VALUES ('Beloved', 'Historical Fiction', 1987, 2);
INSERT INTO dataviz_library.book (title, genre, published_year, author_id)
VALUES ('Americanah', 'Contemporary Fiction', 2013, 3);

-- Members
INSERT INTO dataviz_library.member
    (first_name, last_name, email, join_date, branch_id)
VALUES ('Noreen', 'Lewis', 'noreen@email.com', '2024-01-15', 1);
INSERT INTO dataviz_library.member
    (first_name, last_name, email, join_date, branch_id)
VALUES ('Sarah', 'Brown', 'sarah@email.com', '2024-02-20', 2);
INSERT INTO dataviz_library.member
    (first_name, last_name, email, join_date, branch_id)
VALUES ('Marcus', 'Hall', 'marcus@email.com', '2024-03-10', 1);

-- Loans
INSERT INTO dataviz_library.loan
    (member_id, book_id, loan_date, return_date, status)
VALUES (1, 1, '2024-03-01', '2024-03-15', 'returned');
INSERT INTO dataviz_library.loan
    (member_id, book_id, loan_date, return_date, status)
VALUES (2, 2, '2024-03-05', NULL, 'active');
INSERT INTO dataviz_library.loan
    (member_id, book_id, loan_date, return_date, status)
VALUES (3, 3, '2024-03-08', NULL, 'active');

-- Fines
INSERT INTO dataviz_library.fine (loan_id, amount, paid)
VALUES (1, 2.50, TRUE);
INSERT INTO dataviz_library.fine (loan_id, amount, paid)
VALUES (2, 5.00, FALSE);
