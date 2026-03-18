 CREATE TABLE dataviz_library.branch (
    id        SERIAL,
    name      VARCHAR(128) UNIQUE,
    location  VARCHAR(256),
    PRIMARY KEY(id)
);
