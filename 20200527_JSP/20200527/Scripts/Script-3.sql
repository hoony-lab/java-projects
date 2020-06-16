CREATE TABLE testTable(
	NO int,
	id varchar2(20)
);

SELECT * FROM testtable

SELECT NVL(max(no), 0 ) + 1 AS foo
FROM testtable


INSERT INTO TESTTABLE
values(
(SELECT NVL(max(no), 0 ) + 1 AS foo
FROM testtable), '첫번째 데이터')


SELECT * FROM board
ORDER BY NO;



INSERT INTO BOARD (no, ID, TITLE , CONTENT , WRITEDATE)
VALUES( 
(select nvl(max(NO), 0) + 1 FROM board),
'id', 'title', 'content', sysdate)




SELECT * 
FROM(
	SELECT NO, id, title, content, writedate, ROWNUM AS rn
	from(
		SELECT *
		FROM BOARD
		ORDER BY NO DESC)
	)




SELECT * FROM board
ORDER BY NO ;



DELETE FROM BOARD WHERE no = '26'
