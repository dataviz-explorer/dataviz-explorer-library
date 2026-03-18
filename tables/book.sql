CREATE TABLE dataviz_library.book (
    id             SERIAL,
    title          VARCHAR(256) UNIQUE,
    genre          VARCHAR(128),
    published_year INTEGER,
    author_id      INTEGER REFERENCES dataviz_library.author(id)
                   ON DELETE CASCADE,
    PRIMARY KEY(id)
);
