-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;

CREATE TABLE accounts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  account_id INTEGER,
  photo TEXT,
  caption TEXT
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  account_id INTEGER,
  like_time DATETIME
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  account_id INTEGER,
  comment TEXT,
  comment_time DATETIME
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_id INTEGER, -- Linked to account_id
  followee_id INTEGER, -- Linked to account_id
  follow_time DATETIME
);



