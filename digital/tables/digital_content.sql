-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: digital_content
-- Description: Stores all digital items linking
-- to author, content type and platform
-- ================================================

CREATE TABLE dataviz_library.digital_content (
    id           SERIAL,
    title        VARCHAR(256) UNIQUE,
    author_id    INTEGER REFERENCES dataviz_library.author(id)
                 ON DELETE SET NULL,
    type_id      INTEGER REFERENCES dataviz_library.content_type(id)
                 ON DELETE SET NULL,
    platform_id  INTEGER REFERENCES dataviz_library.platform(id)
                 ON DELETE SET NULL,
    url          VARCHAR(512),
    duration     INTEGER,
    published    DATE,
    PRIMARY KEY(id)
);
