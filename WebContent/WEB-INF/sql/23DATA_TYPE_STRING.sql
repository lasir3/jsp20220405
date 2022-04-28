USE mydb1;

-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUES ('a');
INSERT INTO MyTable4 (col1)
VALUES ('ab'); -- 안됨
INSERT INTO MyTable4 (col3)
VALUES ('ab'); 
INSERT INTO MyTable4 (col3)
VALUES ('b');
INSERT INTO MyTable4 (col4)
VALUES ('abcde');
INSERT INTO MyTable4 (col4)
VALUES ('abcdef'); -- 안됨
INSERT INTO MyTable4 (col4)
VALUES ('abc'); -- 되지만 5개 공간 차지
INSERT INTO MyTable4 (col4)
VALUES ('가나다라마');

-- 트림(trim) disable
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';

SELECT * FROM MyTable4;

-- VARCHAR : 가변길이
CREATE TABLE MyTable5(
	col1 CHAR(10),
   col2 VARCHAR(10)
);

-- 테이블 지우기 (주의해서 사용)
DROP TABLE MyTable5;

SELECT * FROM MyTable5;
INSERT INTO MyTable5 (col1, col2)
VALUES ('a', 'a');
INSERT INTO MyTable5 (col2)
VALUES ('0123456789'); -- 안됨
INSERT INTO MyTable5 (col2)
VALUES ('01234567890'); -- 되긴 하지만 짤림
INSERT INTO MyTable5 (col2)
VALUES ('abcdefghijklmn'); -- 되긴 하지만 짤림



