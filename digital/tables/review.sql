-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: review
-- Description: Stores member ratings and reviews
-- of digital content
-- ================================================

CREATE TABLE dataviz_library.review (
    id           SERIAL,
    member_id    INTEGER REFERENCES dataviz_library.member(id)
                 ON DELETE CASCADE,
    content_id   INTEGER REFERENCES dataviz_library.digital_content(id)
                 ON DELETE CASCADE,
    rating       INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment      TEXT,
    review_date  DATE,
    UNIQUE(member_id, content_id),
    PRIMARY KEY(id)
);
