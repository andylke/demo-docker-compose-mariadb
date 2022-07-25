CREATE DATABASE IF NOT EXISTS demo;

GRANT ALL PRIVILEGES ON demo.* TO 'mariadbuser'@'%' WITH GRANT OPTION;

USE demo;

CREATE TABLE demo_table (
    id int,
    text varchar(100),
    PRIMARY KEY (id)
);

INSERT INTO demo_table values(1, 'Demo');

