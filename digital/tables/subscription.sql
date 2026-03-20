-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Table: subscription
-- Description: Records member subscriptions
-- to digital content plans
-- ================================================

CREATE TABLE dataviz_library.subscription (
    id         SERIAL,
    member_id  INTEGER REFERENCES dataviz_library.member(id)
               ON DELETE CASCADE,
    plan_id    INTEGER REFERENCES dataviz_library.subscription_plan(id)
               ON DELETE CASCADE,
    start_date DATE,
    end_date   DATE,
    status     VARCHAR(50),
    UNIQUE(member_id, plan_id, start_date),
    PRIMARY KEY(id)
);
