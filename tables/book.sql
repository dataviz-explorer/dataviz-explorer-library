 -- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: book
-- Description: Stores book details linked to author
-- ================================================

CREATE TABLE dataviz_library.book (
    id             SERIAL,
    title          VARCHAR(256) UNIQUE,
    genre          VARCHAR(128),
    published_year INTEGER,
    author_id      INTEGER REFERENCES dataviz_library.author(id)
                   ON DELETE CASCADE,
    PRIMARY KEY(id)
);
