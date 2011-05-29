create table entry (
    entry_id varchar(36) binary not null,
    body longblob not null,
    timestamp timestamp not null,
    PRIMARY KEY (entry_id)
) engine=innodb;
