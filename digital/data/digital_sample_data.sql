-- ================================================
-- DataViz Explorer Digital Library Database
-- Created by: Noreen Lewis | DataViz Explorer®
-- Description: Sample data inserts for all
-- digital library tables
-- ================================================

-- Content Types
INSERT INTO dataviz_library.content_type (name, description)
VALUES ('eBook', 'Digital book in electronic format');
INSERT INTO dataviz_library.content_type (name, description)
VALUES ('Video', 'Recorded video lecture or tutorial');
INSERT INTO dataviz_library.content_type (name, description)
VALUES ('Podcast', 'Audio podcast episode or series');
INSERT INTO dataviz_library.content_type (name, description)
VALUES ('Online Course', 'Structured online learning course');

-- Platforms
INSERT INTO dataviz_library.platform (name, url)
VALUES ('Kindle', 'https://kindle.amazon.com');
INSERT INTO dataviz_library.platform (name, url)
VALUES ('YouTube', 'https://youtube.com');
INSERT INTO dataviz_library.platform (name, url)
VALUES ('Spotify', 'https://spotify.com');
INSERT INTO dataviz_library.platform (name, url)
VALUES ('Coursera', 'https://coursera.org');

-- Digital Content
INSERT INTO dataviz_library.digital_content
    (title, author_id, type_id, platform_id, url, duration, published)
VALUES ('One Hundred Years of Solitude - eBook',
    1, 1, 1, 'https://kindle.amazon.com/book1', NULL, '2020-01-01');
INSERT INTO dataviz_library.digital_content
    (title, author_id, type_id, platform_id, url, duration, published)
VALUES ('Beloved - Audio Discussion',
    2, 3, 3, 'https://spotify.com/podcast1', 45, '2021-06-15');
INSERT INTO dataviz_library.digital_content
    (title, author_id, type_id, platform_id, url, duration, published)
VALUES ('Writing African Stories - Course',
    3, 4, 4, 'https://coursera.org/course1', 600, '2022-09-01');

-- Subscription Plans
INSERT INTO dataviz_library.subscription_plan
    (name, price, duration, description)
VALUES ('Basic', 9.99, 30, 'Access to eBooks only');
INSERT INTO dataviz_library.subscription_plan
    (name, price, duration, description)
VALUES ('Standard', 19.99, 30,
    'Access to eBooks, Videos and Podcasts');
INSERT INTO dataviz_library.subscription_plan
    (name, price, duration, description)
VALUES ('Premium', 29.99, 30,
    'Full access to all digital content including courses');

-- Digital Loans
INSERT INTO dataviz_library.digital_loan
    (member_id, content_id, access_date, return_date, status)
VALUES (1, 1, '2024-03-01', '2024-03-15', 'returned');
INSERT INTO dataviz_library.digital_loan
    (member_id, content_id, access_date, return_date, status)
VALUES (2, 2, '2024-03-05', NULL, 'active');

-- Subscriptions
INSERT INTO dataviz_library.subscription
    (member_id, plan_id, start_date, end_date, status)
VALUES (1, 3, '2024-01-01', '2024-01-31', 'active');
INSERT INTO dataviz_library.subscription
    (member_id, plan_id, start_date, end_date, status)
VALUES (2, 2, '2024-02-01', '2024-02-29', 'active');
INSERT INTO dataviz_library.subscription
    (member_id, plan_id, start_date, end_date, status)
VALUES (3, 1, '2024-03-01', '2024-03-31', 'active');

-- Reviews
INSERT INTO dataviz_library.review
    (member_id, content_id, rating, comment, review_date)
VALUES (1, 1, 5,
    'Excellent eBook, very convenient to read digitally.',
    '2024-03-16');
INSERT INTO dataviz_library.review
    (member_id, content_id, rating, comment, review_date)
VALUES (3, 3, 4,
    'Great course, very well structured and informative.',
    '2024-03-20');
