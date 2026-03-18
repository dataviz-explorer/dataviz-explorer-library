CREATE TABLE dataviz_library.member (
    id          SERIAL,
    first_name  VARCHAR(128),
    last_name   VARCHAR(128),
    email       VARCHAR(256) UNIQUE,
    join_date   DATE,
    branch_id   INTEGER REFERENCES dataviz_library.branch(id)
                ON DELETE SET NULL,
    PRIMARY KEY(id)
);
