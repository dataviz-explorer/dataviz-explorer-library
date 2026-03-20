-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: content_type
-- Description: Stores digital content categories
-- ================================================

CREATE TABLE dataviz_library.content_type (
    id          SERIAL,
    name        VARCHAR(128) UNIQUE,
    description VARCHAR(256),
    PRIMARY KEY(id)
);
