-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: platform
-- Description: Stores hosting platforms
-- ================================================

CREATE TABLE dataviz_library.platform (
    id   SERIAL,
    name VARCHAR(128) UNIQUE,
    url  VARCHAR(256),
    PRIMARY KEY(id)
);
