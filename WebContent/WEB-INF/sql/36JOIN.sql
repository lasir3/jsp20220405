USE mydb2;

-- 게시물별 댓글 수 조회 (단, 댓글이 없는 게시물은 나오지 않음)

SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id)
FROM Board b JOIN Reply r
ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1;

SELECT b.*, COUNT(r.id)  -- b.* b에 해당하는 모든 컬럼
FROM Board b INNER JOIN Reply r
ON b.id = r.board_id
GROUP BY b.id
ORDER BY 1;

-- INNER JOIN (교집합)
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.board_id;

-- LEFT OUTER JOIN
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.board_id;

-- RIGHT OUTER JOIN
SELECT * FROM Board b RIGHT OUTER JOIN Reply r ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.board_id;

-- 댓글이 없는 개시물 조회
SELECT * FROM Board b LEFT JOIN Reply r 
On b.id = r.board_id
WHERE r.id IS NULL;

-- 전체 게시물 조회 with 댓글 수
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;
