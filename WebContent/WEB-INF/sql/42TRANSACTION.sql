USE mydb2;

DELETE FROM Reply WHERE board_id = 10;
-- ROLLBACK; -- 문제 발생시 ROLLBACK
DELETE FROM Board
WHERE id = 10;
COMMIT;

SELECT * FROM Reply WHERE board_id = 10;