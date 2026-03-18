 -- ================================================
-- DataViz Explorer Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: branch
-- Description: Stores library branch locations
-- ================================================

CREATE TABLE dataviz_library.branch (
    id        SERIAL,
    name      VARCHAR(128) UNIQUE,
    location  VARCHAR(256),
    PRIMARY KEY(id)
);
