BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS entry (
  entry_id varchar(36) NOT NULL,
  body longblob NOT NULL,
  ctime int unsigned NOT NULL,
  PRIMARY KEY (entry_id)
);

COMMIT;
