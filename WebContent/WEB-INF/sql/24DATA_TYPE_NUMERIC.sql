USE mydb1;

CREATE TABLE Mytable6 (
	col1 int,
   col2 int(3)
);

SELECT * FROM Mytable6;
INSERT INTO Mytable6 (col1)
VALUES (2923498723985); -- 최대, 최소값 사이만 가능
INSERT INTO Mytable6 (col1)
VALUES (3333);
INSERT INTO Mytable6 (col2)
VALUES (1234);

-- DEC : 소수가 있는 수
-- DEC(size, d) : size=총길이, d=소수점 이하 수의 길이
CREATE TABLE Mytable7 (
 col1 DEC(3, 2),
 col2 DEC(5, 1)
);

SELECT * FROM Mytable7;
INSERT INTO Mytable7 (col1) VALUES (3.14);
INSERT INTO Mytable7 (col1) VALUES (13.14);
INSERT INTO Mytable7 (col1) VALUES (3.145);
INSERT INTO Mytable7 (col2) VALUES (1234.5);
INSERT INTO Mytable7 (col2) VALUES (1234.522);