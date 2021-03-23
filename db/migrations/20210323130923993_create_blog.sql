-- +micrate Up
CREATE TABLE blogs (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR,
  body TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS blogs;
