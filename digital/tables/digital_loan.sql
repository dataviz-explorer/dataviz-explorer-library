-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: digital_loan
-- Description: Records member access to
-- individual digital content items
-- ================================================

CREATE TABLE dataviz_library.digital_loan (
    id           SERIAL,
    member_id    INTEGER REFERENCES dataviz_library.member(id)
                 ON DELETE CASCADE,
    content_id   INTEGER REFERENCES dataviz_library.digital_content(id)
                 ON DELETE CASCADE,
    access_date  DATE,
    return_date  DATE,
    status       VARCHAR(50),
    UNIQUE(member_id, content_id, access_date),
    PRIMARY KEY(id)
);
