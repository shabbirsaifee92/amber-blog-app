-- +micrate Up
alter table blogs ADD COLUMN likes INT DEFAULT 0;

-- +micrate Down
ALTER TABLE blogs
DROP COLUMN IF EXISTS likes;