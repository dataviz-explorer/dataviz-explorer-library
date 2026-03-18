 -- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: loan
-- Description: Links members to books (many-to-many)
-- ================================================

CREATE TABLE dataviz_library.loan (
    id           SERIAL,
    member_id    INTEGER REFERENCES dataviz_library.member(id)
                 ON DELETE CASCADE,
    book_id      INTEGER REFERENCES dataviz_library.book(id)
                 ON DELETE CASCADE,
    loan_date    DATE,
    return_date  DATE,
    status       VARCHAR(50),
    UNIQUE(member_id, book_id, loan_date),
    PRIMARY KEY(id)
);
