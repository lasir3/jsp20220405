USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT DISTINCT b.id, b.title 
FROM Board b JOIN Reply r On b.id = r.board_id;
-- SUBQUERY
SELECT id, title 
FROM Board 
WHERE id IN -- (7, 9, 10);
			(SELECT board_id FROM Reply);	
         
-- 댓글이 없는 게시물
SELECT b.id, b.title
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id IS NULL;

-- SUBQUARY
SELECT id, title
FROM Board b
WHERE id NOT IN -- (1, 2, 4, 6, 8);
				(SELECT board_id FROM Reply);

-- 게시글별 댓글 수 (JOIN)
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;

-- 게시글별 댓글 수 (SUBQUERY)
SELECT b.*, (SELECT COUNT(r.id) FROM Reply r WHERE board_id = b.id) NumOfReply
FROM Board b
ORDER BY b.id DESC;