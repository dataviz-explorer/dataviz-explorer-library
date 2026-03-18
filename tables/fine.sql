-- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: fine
-- Description: Stores fines linked to loans
-- ================================================

CREATE TABLE dataviz_library.fine (
    id       SERIAL,
    loan_id  INTEGER REFERENCES dataviz_library.loan(id)
             ON DELETE CASCADE,
    amount   NUMERIC(10, 2),
    paid     BOOLEAN DEFAULT FALSE,
    PRIMARY KEY(id)
);
