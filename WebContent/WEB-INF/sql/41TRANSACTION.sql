USE mydb1;
CREATE TABLE Bank (
	account VARCHAR(2) PRIMARY KEY, 
   money INT
);

INSERT INTO Bank (account, money) VALUES ('A', 10000);
INSERT INTO Bank (account, money) VALUES ('B', 30000);
COMMIT;

SELECT * FROM Bank;

-- A가 B에게 5000원 송금
-- A의 계좌에서 -5000원
-- B의 계좌에서 +5000원
UPDATE Bank SET money = money - 5000 WHERE account = 'A';
-- 문제 발생시
ROLLBACK;
UPDATE Bank SET money = money + 5000 WHERE account = 'B';

COMMIT;
SELECT * FROM Bank;