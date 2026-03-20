-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: subscription_plan
-- Description: Defines available subscription
-- plans and pricing for digital content
-- ================================================

CREATE TABLE dataviz_library.subscription_plan (
    id          SERIAL,
    name        VARCHAR(128) UNIQUE,
    price       NUMERIC(10,2),
    duration    INTEGER,
    description VARCHAR(256),
    PRIMARY KEY(id)
);
