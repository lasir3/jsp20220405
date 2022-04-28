USE mydb1;

-- NOT NULL : null을 허용하지 않음
CREATE TABLE mytable9 (
	col1 VARCHAR(100),
    col2 VARCHAR(100) NOT NULL
);

DESC mytable9;
INSERT INTO mytable9 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable9 (col1, col2) VALUES (null, 'b');
INSERT INTO mytable9 (col1, col2) VALUES ('a', null);
SELECT * FROM mytable9;