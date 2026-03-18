 -- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: author
-- Description: Stores information about book authors
-- ================================================

CREATE TABLE dataviz_library.author (
    id           SERIAL,
    first_name   VARCHAR(128),
    last_name    VARCHAR(128),
    nationality  VARCHAR(128),
    PRIMARY KEY(id)
);
