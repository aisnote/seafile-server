ALTER TABLE RepoInfo ADD COLUMN status INTEGER DEFAULT 0;
CREATE TABLE IF NOT EXISTS RepoSyncError (id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT, token CHAR(41), error_time BIGINT UNSIGNED, error_con VARCHAR(1024), UNIQUE INDEX(token));
ALTER TABLE RepoSyncError MODIFY COLUMN error_con VARCHAR(1024);
